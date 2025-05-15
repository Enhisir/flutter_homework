import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rabbitmq_client/data/rabbitmq/rabbitmq_service.dart';
import 'package:rabbitmq_client/domain/services/auth_service.dart';
import 'package:rabbitmq_client/internal/app_locator.dart';
import 'package:rabbitmq_client/internal/config.dart';
class TimeScreen extends StatefulWidget {
  const TimeScreen({super.key});

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  final RabbitMQService _rabbitMQService = getIt<RabbitMQService>();
  final AuthService _authService = getIt<AuthService>();
  Map<String, dynamic>? _timeData;
  bool _isConnected = false;
  String? _errorMessage;
  Timer? _timeUpdateTimer;

  @override
  void initState() {
    super.initState();
    _initConnection();
  }

  Future<void> _initConnection() async {
    try {
      await _rabbitMQService.connect(host: AppConfig.rabbitMqHost);
      final session = await _authService.getSession();
      final username = await _authService.getUsername();

      if (session != null && username != null) {
        await _rabbitMQService.subscribeToTimeUpdates(session, (timeData) {
          setState(() {
            _timeData = timeData;
            print(_timeData.toString());
          });
        });

        await _rabbitMQService.subscribeToLogoutEvents(session, (_) {
          _logout();
        });

        setState(() {
          _isConnected = true;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
        _isConnected = false;
      });
    }
  }

  Future<void> _logout() async {
    try {
      await _authService.logout();
    } finally {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/auth');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<String?>(
          future: _authService.getUsername(),
          builder: (context, snapshot) {
            return Text('Welcome, ${snapshot.data ?? 'User'}');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Connection status: ${_isConnected ? 'Connected' : 'Disconnected'}',
              style: TextStyle(
                color: _isConnected ? Colors.green : Colors.red,
              ),
            ),
            if (_errorMessage != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            const SizedBox(height: 20),
            const Text(
              'Server Time:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            if (_timeData != null) ...[
              Text('Greenwich Mean Time: ${_formatTime(_timeData!['GreenwichTime'])}'),
              Text('Moscow Time: ${_formatTime(_timeData!['MoscowTime'])}'),
            ] else
              const Text('Waiting for time updates...'),
          ],
        ),
      ),
    );
  }

  String _formatTime(String timeString) {
    final dateTime = DateTime.parse(timeString);
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timeUpdateTimer?.cancel();
    _rabbitMQService.disconnect();
    super.dispose();
  }
}
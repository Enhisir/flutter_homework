import 'dart:convert';

import 'package:dart_amqp/dart_amqp.dart';
import 'package:rabbitmq_client/internal/config.dart';

class RabbitMQService {
  late Client _client;
  late Channel _channel;
  late Exchange _topicExchange;
  String? _currentSession;
  Consumer? _timeConsumer;
  Consumer? _logoutConsumer;

  Future<void> connect({
    required String host,
    int port = 5672,
    String username = 'guest',
    String password = 'guest',
  }) async {
    _client = Client(
      settings: ConnectionSettings(
        host: host,
        port: port,
        authProvider: PlainAuthenticator(username, password),
      ),
    );

    _channel = await _client.channel();

    _topicExchange = await _channel.exchange(
      AppConfig.topicsExchangeName,
      ExchangeType.TOPIC,
      durable: true,
    );
  }

  Future<void> subscribeToTimeUpdates(
      String session,
      Function(Map<String, dynamic>) onMessage,
      ) async {
    _currentSession = session;

    final queue = await _channel.privateQueue();
    await queue.bind(_topicExchange, 'RabbitMQTimeServer.Events.Time');

    _timeConsumer = await queue.consume()
      ..listen((message) {
        try {
          final payload = jsonDecode(message.payloadAsString);
          onMessage(payload);
          message.ack();
        } catch (e) {
          message.reject(false);
        }
      });
  }

  Future<void> subscribeToLogoutEvents(
      String session,
      Function(String) onLogout,
      ) async {
    final queue = await _channel.privateQueue();

    await queue.bind(_topicExchange, 'RabbitMQTimeServer.Events.LoggedOut');

    _logoutConsumer = await queue.consume()
      ..listen((message) {
        if (message.payloadAsString == session) {
          onLogout(session);
          message.ack();
        } else {
          message.reject(false);
        }
      });
  }

  Future<void> disconnect() async {
    await _timeConsumer?.cancel();
    await _logoutConsumer?.cancel();
    await _channel.close();
    await _client.close();
  }

  // bool get isConnected => _client.isConnected;
}
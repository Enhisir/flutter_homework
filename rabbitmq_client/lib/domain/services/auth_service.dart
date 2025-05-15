import 'package:rabbitmq_client/data/api/api_service.dart';
import 'package:rabbitmq_client/data/rabbitmq/rabbitmq_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static const String _sessionKey = 'user_session';
  static const String _usernameKey = 'username';

  final ApiService apiService;
  final RabbitMQService rabbitMQService;

  AuthService({required this.apiService, required this.rabbitMQService});

  Future<Map<String, dynamic>> login(String username) async {
    final response = await apiService.login(username);
    await _saveSession(response['session'], response['username']);
    return response;
  }

  Future<Map<String, dynamic>> authWithSession() async {
    final prefs = await SharedPreferences.getInstance();
    final session = prefs.getString(_sessionKey);
    if (session == null) throw Exception('No saved session');

    final response = await apiService.authWithSession(session);
    await _saveSession(response['session'], response['username']);
    return response;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    final session = prefs.getString(_sessionKey);
    if (session != null) {
      await apiService.logout(session);
    }
    await _clearSession();
  }

  Future<bool> hasSession() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_sessionKey);
  }

  Future<String?> getSession() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_sessionKey);
  }

  Future<String?> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_usernameKey);
  }

  Future<void> _saveSession(String session, String username) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_sessionKey, session);
    await prefs.setString(_usernameKey, username);
  }

  Future<void> _clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_sessionKey);
    await prefs.remove(_usernameKey);
  }
}
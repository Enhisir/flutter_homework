import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<Map<String, dynamic>> login(String username) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'Username': username}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Login failed: ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>> authWithSession(String session) async {
    final response = await http.get(
      Uri.parse('$baseUrl/auth'),
      headers: {'Session': session},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Auth failed: ${response.statusCode}');
    }
  }

  Future<void> logout(String session) async {
    await http.post(
      Uri.parse('$baseUrl/auth/logout'),
      headers: {'Session': session},
    );
  }

  Future<Map<String, dynamic>> getTime(String session) async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/time'),
      headers: {'Session': session},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to get time: ${response.statusCode}');
    }
  }
}
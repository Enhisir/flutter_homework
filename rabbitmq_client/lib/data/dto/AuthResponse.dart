class AuthResponse {
  final String username;
  final String session;

  AuthResponse({required this.username, required this.session});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      username: json['username'],
      session: json['session'],
    );
  }
}
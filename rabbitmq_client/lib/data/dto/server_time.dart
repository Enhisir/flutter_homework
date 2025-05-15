class ServerTime {
  final DateTime greenwichTime;
  final DateTime moscowTime;

  ServerTime({required this.greenwichTime, required this.moscowTime});

  factory ServerTime.fromJson(Map<String, dynamic> json) {
    return ServerTime(
      greenwichTime: DateTime.parse(json['GreenwichTime']),
      moscowTime: DateTime.parse(json['MoscowTime']),
    );
  }
}
class AppConfig {
  static const String apiBaseUrl = 'http://10.17.60.147:5090/api'; // 192.168.31.114
  static const String rabbitMqHost = '10.17.60.147'; // 10.17.60.147

  static const int rabbitMqPort = 5672;
  static const String rabbitMqUser = 'guest';
  static const String rabbitMqPassword = 'guest';

  static const String timeQueueName = 'time-server';
  static const String errorQueueName = 'error';
  static const String directExchangeName = 'RebusDirect';
  static const String topicsExchangeName = 'RebusTopics';
}
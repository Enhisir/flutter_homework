import 'package:get_it/get_it.dart';

import 'config.dart';
import 'package:rabbitmq_client/data/api/api_service.dart';
import 'package:rabbitmq_client/data/rabbitmq/rabbitmq_service.dart';
import 'package:rabbitmq_client/domain/services/auth_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<ApiService>(ApiService(baseUrl: AppConfig.apiBaseUrl));

  getIt.registerSingleton<RabbitMQService>(RabbitMQService());

  getIt<RabbitMQService>().connect(
    host: AppConfig.rabbitMqHost,
    port: AppConfig.rabbitMqPort,
    username: AppConfig.rabbitMqUser,
    password: AppConfig.rabbitMqPassword,
  );

  getIt.registerSingleton<AuthService>(
    AuthService(
      apiService: getIt<ApiService>(),
      rabbitMQService: getIt<RabbitMQService>(),
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:rabbitmq_client/internal/app_locator.dart';
import 'package:rabbitmq_client/domain/services/auth_service.dart';
import 'package:rabbitmq_client/presentation/auth_screen.dart';
import 'package:rabbitmq_client/presentation/time_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  final authService = getIt<AuthService>();
  final hasSession = await authService.hasSession();

  runApp(MyApp(initialRoute: hasSession ? '/time' : '/auth'));
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RabbitMQ Time Client',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: initialRoute,
      routes: {
        '/auth': (context) => const AuthScreen(),
        '/time': (context) => const TimeScreen(),
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_loading/presentation/pages/json_page/json_bloc.dart';
import 'package:lazy_loading/presentation/pages/pagination_page/pagination_bloc.dart';
import 'internal/dependencies.dart' as di;
import 'presentation/pages/json_page/json_page.dart';
import 'presentation/pages/pagination_page/pagination_page.dart';

void main() {
  di.configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: const Text('BLoC Example')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider(
                            create: (_) => di.getIt<JsonBloc>(),
                            child: const JsonPage(),
                          ),
                        ),
                      );
                    },
                    child: const Text('JSON Example'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider(
                            create: (_) => di.getIt<PaginationBloc>(),
                            child: const PaginationPage(),
                          ),
                        ),
                      );
                    },
                    child: const Text('Pagination Example'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
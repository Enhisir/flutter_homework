import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/models/post.dart' show Post;
import 'json_bloc.dart';
import 'json_event.dart';
import 'json_state.dart';

class JsonPage extends StatelessWidget {
  const JsonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JSON Example')),
      body: BlocBuilder<JsonBloc, JsonState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => _buildErrorView(context, message),
            normal: (data, isLoading, errorMessage) {
              if (isLoading) {
                return Stack(
                  children: [
                    _buildDataView(context, data),
                    const Center(child: CircularProgressIndicator()),
                  ],
                );
              }
              return _buildDataView(context, data, errorMessage);
            },
          );
        },
      ),
    );
  }

  Widget _buildDataView(BuildContext context, Post data, [String? errorMessage]) {
    if (errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage)),
        );
      });
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Title: ${data.title}', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text('Body: ${data.body}', style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.read<JsonBloc>().add(const LoadJsonEvent(1)),
            child: const Text('Refresh'),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorView(BuildContext context, String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.read<JsonBloc>().add(const LoadJsonEvent(1)),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
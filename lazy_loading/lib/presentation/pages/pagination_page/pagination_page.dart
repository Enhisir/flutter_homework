import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pagination_bloc.dart';
import 'pagination_event.dart';
import 'pagination_state.dart';

class PaginationPage extends StatefulWidget {
  const PaginationPage({super.key});

  @override
  State<PaginationPage> createState() => _PaginationPageState();
}

class _PaginationPageState extends State<PaginationPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<PaginationBloc>().add(const PaginationEvent.load());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      context.read<PaginationBloc>().add(const PaginationEvent.loadMore());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagination Example')),
      body: BlocBuilder<PaginationBloc, PaginationState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            normal: (data, isLoading, hasMore) {
              return ListView.builder(
                controller: _scrollController,
                itemCount: data.length + (hasMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index < data.length) {
                    final post = data[index];
                    return ListTile(
                      title: Text(post.title),
                      subtitle: Text(post.body),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: isLoading
                            ? const CircularProgressIndicator()
                            : const Text('No more items'),
                      ),
                    );
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}
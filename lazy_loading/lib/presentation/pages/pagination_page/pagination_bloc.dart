import 'package:bloc/bloc.dart';
import 'package:lazy_loading/presentation/pages/pagination_page/pagination_event.dart';
import 'package:lazy_loading/presentation/pages/pagination_page/pagination_state.dart';
import '../../../domain/usecases/get_posts.dart';

class PaginationBloc extends Bloc<PaginationEvent, PaginationState> {
  final GetPosts _getPosts;
  final int _limit = 10;
  int _page = 1;
  bool _hasMore = true;

  PaginationBloc(this._getPosts) : super(const PaginationState.loading()) {
    on<LoadPaginationEvent>(_onLoad);
    on<LoadMorePaginationEvent>(_onLoadMore);
  }

  Future<void> _onLoad(
      LoadPaginationEvent event,
      Emitter<PaginationState> emit,
      ) async {
    _page = 1;
    _hasMore = true;

    try {
      emit(const PaginationState.loading());
      final posts = await _getPosts(_page, _limit);
      _hasMore = posts.length == _limit;
      emit(PaginationState.normal(data: posts, hasMore: _hasMore));
    } catch (e) {
      emit(PaginationState.error(e.toString()));
    }
  }

  Future<void> _onLoadMore(
      LoadMorePaginationEvent event,
      Emitter<PaginationState> emit,
      ) async {
    if (!_hasMore) return;

    state.maybeWhen(
      normal: (data, isLoading, hasMore) async {
        try {
          emit(PaginationState.normal(data: data, isLoading: true, hasMore: hasMore));

          _page++;
          final newPosts = await _getPosts(_page, _limit);
          _hasMore = newPosts.length == _limit;

          emit(PaginationState.normal(
            data: [...data, ...newPosts],
            hasMore: _hasMore,
          ));
        } catch (e) {
          _page--;
          emit(PaginationState.normal(data: data, hasMore: _hasMore));
        }
      },
      orElse: () {},
    );
  }
}
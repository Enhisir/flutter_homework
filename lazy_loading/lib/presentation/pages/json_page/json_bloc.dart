import 'package:bloc/bloc.dart';
import 'package:lazy_loading/presentation/pages/json_page/json_event.dart';
import 'package:lazy_loading/presentation/pages/json_page/json_state.dart';
import '../../../domain/usecases/get_post.dart';

class JsonBloc extends Bloc<JsonEvent, JsonState> {
  final GetPost _getPost;

  JsonBloc(this._getPost) : super(const JsonState.initial()) {
    on<LoadJsonEvent>(_onLoadJson);
    add(const LoadJsonEvent(1));
  }

  Future<void> _onLoadJson(
      LoadJsonEvent event,
      Emitter<JsonState> emit,
      ) async {
    final previousData = state.whenOrNull(
      normal: (data, _, __) => data,
    );

    emit(
      previousData != null
          ? JsonState.normal(data: previousData, isLoading: true)
          : const JsonState.loading(),
    );

    try {
      final post = await _getPost(event.id);
      emit(JsonState.normal(data: post, isLoading: false));
    } catch (e) {
      emit(
        previousData != null
            ? JsonState.normal(
          data: previousData,
          isLoading: false,
          errorMessage: e.toString(),
        )
            : JsonState.error(e.toString()),
      );
    }
  }
}

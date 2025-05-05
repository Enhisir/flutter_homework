import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
class BaseState<T> with _$BaseState<T> {
  const factory BaseState.normal({
    required T data,
    @Default(false) bool isLoading,
  }) = _Normal<T>;

  const factory BaseState.loading() = _Loading<T>;
  const factory BaseState.error(String message) = _Error<T>;
}
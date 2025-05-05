import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/post.dart';

part 'json_state.freezed.dart';

@freezed
class JsonState with _$JsonState {
  const factory JsonState.initial() = _JsonInitial;
  const factory JsonState.loading() = _JsonLoading;
  const factory JsonState.normal({
    required Post data,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _JsonNormal;
  const factory JsonState.error(String message) = _JsonError;
}
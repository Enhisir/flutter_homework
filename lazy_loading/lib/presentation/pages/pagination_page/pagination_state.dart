import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/post.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState with _$PaginationState {
  const factory PaginationState.normal({
    required List<Post> data,
    @Default(false) bool isLoading,
    @Default(false) bool hasMore,
  }) = _PaginationNormal;

  const factory PaginationState.loading() = _PaginationLoading;
  const factory PaginationState.error(String message) = _PaginationError;
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_event.freezed.dart';

@freezed
class PaginationEvent with _$PaginationEvent {
  const factory PaginationEvent.load() = LoadPaginationEvent;
  const factory PaginationEvent.loadMore() = LoadMorePaginationEvent;
}
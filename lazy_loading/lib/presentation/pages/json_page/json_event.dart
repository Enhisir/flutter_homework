import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_event.freezed.dart';

@freezed
class JsonEvent with _$JsonEvent {
  const factory JsonEvent.load(int id) = LoadJsonEvent;
}
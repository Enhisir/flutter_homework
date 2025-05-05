// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$JsonEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadJsonEvent value) load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadJsonEvent value)? load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadJsonEvent value)? load,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of JsonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JsonEventCopyWith<JsonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonEventCopyWith<$Res> {
  factory $JsonEventCopyWith(JsonEvent value, $Res Function(JsonEvent) then) =
      _$JsonEventCopyWithImpl<$Res, JsonEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$JsonEventCopyWithImpl<$Res, $Val extends JsonEvent>
    implements $JsonEventCopyWith<$Res> {
  _$JsonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JsonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoadJsonEventImplCopyWith<$Res>
    implements $JsonEventCopyWith<$Res> {
  factory _$$LoadJsonEventImplCopyWith(
    _$LoadJsonEventImpl value,
    $Res Function(_$LoadJsonEventImpl) then,
  ) = __$$LoadJsonEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LoadJsonEventImplCopyWithImpl<$Res>
    extends _$JsonEventCopyWithImpl<$Res, _$LoadJsonEventImpl>
    implements _$$LoadJsonEventImplCopyWith<$Res> {
  __$$LoadJsonEventImplCopyWithImpl(
    _$LoadJsonEventImpl _value,
    $Res Function(_$LoadJsonEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JsonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$LoadJsonEventImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadJsonEventImpl implements LoadJsonEvent {
  const _$LoadJsonEventImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'JsonEvent.load(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadJsonEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of JsonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadJsonEventImplCopyWith<_$LoadJsonEventImpl> get copyWith =>
      __$$LoadJsonEventImplCopyWithImpl<_$LoadJsonEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadJsonEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadJsonEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadJsonEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadJsonEvent implements JsonEvent {
  const factory LoadJsonEvent(final int id) = _$LoadJsonEventImpl;

  @override
  int get id;

  /// Create a copy of JsonEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadJsonEventImplCopyWith<_$LoadJsonEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

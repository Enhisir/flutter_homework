// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PaginationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaginationEvent value) load,
    required TResult Function(LoadMorePaginationEvent value) loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPaginationEvent value)? load,
    TResult? Function(LoadMorePaginationEvent value)? loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaginationEvent value)? load,
    TResult Function(LoadMorePaginationEvent value)? loadMore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationEventCopyWith<$Res> {
  factory $PaginationEventCopyWith(
    PaginationEvent value,
    $Res Function(PaginationEvent) then,
  ) = _$PaginationEventCopyWithImpl<$Res, PaginationEvent>;
}

/// @nodoc
class _$PaginationEventCopyWithImpl<$Res, $Val extends PaginationEvent>
    implements $PaginationEventCopyWith<$Res> {
  _$PaginationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadPaginationEventImplCopyWith<$Res> {
  factory _$$LoadPaginationEventImplCopyWith(
    _$LoadPaginationEventImpl value,
    $Res Function(_$LoadPaginationEventImpl) then,
  ) = __$$LoadPaginationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadPaginationEventImplCopyWithImpl<$Res>
    extends _$PaginationEventCopyWithImpl<$Res, _$LoadPaginationEventImpl>
    implements _$$LoadPaginationEventImplCopyWith<$Res> {
  __$$LoadPaginationEventImplCopyWithImpl(
    _$LoadPaginationEventImpl _value,
    $Res Function(_$LoadPaginationEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadPaginationEventImpl implements LoadPaginationEvent {
  const _$LoadPaginationEventImpl();

  @override
  String toString() {
    return 'PaginationEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPaginationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaginationEvent value) load,
    required TResult Function(LoadMorePaginationEvent value) loadMore,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPaginationEvent value)? load,
    TResult? Function(LoadMorePaginationEvent value)? loadMore,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaginationEvent value)? load,
    TResult Function(LoadMorePaginationEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadPaginationEvent implements PaginationEvent {
  const factory LoadPaginationEvent() = _$LoadPaginationEventImpl;
}

/// @nodoc
abstract class _$$LoadMorePaginationEventImplCopyWith<$Res> {
  factory _$$LoadMorePaginationEventImplCopyWith(
    _$LoadMorePaginationEventImpl value,
    $Res Function(_$LoadMorePaginationEventImpl) then,
  ) = __$$LoadMorePaginationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMorePaginationEventImplCopyWithImpl<$Res>
    extends _$PaginationEventCopyWithImpl<$Res, _$LoadMorePaginationEventImpl>
    implements _$$LoadMorePaginationEventImplCopyWith<$Res> {
  __$$LoadMorePaginationEventImplCopyWithImpl(
    _$LoadMorePaginationEventImpl _value,
    $Res Function(_$LoadMorePaginationEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMorePaginationEventImpl implements LoadMorePaginationEvent {
  const _$LoadMorePaginationEventImpl();

  @override
  String toString() {
    return 'PaginationEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMorePaginationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaginationEvent value) load,
    required TResult Function(LoadMorePaginationEvent value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPaginationEvent value)? load,
    TResult? Function(LoadMorePaginationEvent value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaginationEvent value)? load,
    TResult Function(LoadMorePaginationEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMorePaginationEvent implements PaginationEvent {
  const factory LoadMorePaginationEvent() = _$LoadMorePaginationEventImpl;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PaginationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Post> data, bool isLoading, bool hasMore)
    normal,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Post> data, bool isLoading, bool hasMore)? normal,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Post> data, bool isLoading, bool hasMore)? normal,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaginationNormal value) normal,
    required TResult Function(_PaginationLoading value) loading,
    required TResult Function(_PaginationError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaginationNormal value)? normal,
    TResult? Function(_PaginationLoading value)? loading,
    TResult? Function(_PaginationError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaginationNormal value)? normal,
    TResult Function(_PaginationLoading value)? loading,
    TResult Function(_PaginationError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<$Res> {
  factory $PaginationStateCopyWith(
    PaginationState value,
    $Res Function(PaginationState) then,
  ) = _$PaginationStateCopyWithImpl<$Res, PaginationState>;
}

/// @nodoc
class _$PaginationStateCopyWithImpl<$Res, $Val extends PaginationState>
    implements $PaginationStateCopyWith<$Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PaginationNormalImplCopyWith<$Res> {
  factory _$$PaginationNormalImplCopyWith(
    _$PaginationNormalImpl value,
    $Res Function(_$PaginationNormalImpl) then,
  ) = __$$PaginationNormalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> data, bool isLoading, bool hasMore});
}

/// @nodoc
class __$$PaginationNormalImplCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res, _$PaginationNormalImpl>
    implements _$$PaginationNormalImplCopyWith<$Res> {
  __$$PaginationNormalImplCopyWithImpl(
    _$PaginationNormalImpl _value,
    $Res Function(_$PaginationNormalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
    Object? hasMore = null,
  }) {
    return _then(
      _$PaginationNormalImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<Post>,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasMore:
            null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$PaginationNormalImpl implements _PaginationNormal {
  const _$PaginationNormalImpl({
    required final List<Post> data,
    this.isLoading = false,
    this.hasMore = false,
  }) : _data = data;

  final List<Post> _data;
  @override
  List<Post> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'PaginationState.normal(data: $data, isLoading: $isLoading, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationNormalImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    isLoading,
    hasMore,
  );

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationNormalImplCopyWith<_$PaginationNormalImpl> get copyWith =>
      __$$PaginationNormalImplCopyWithImpl<_$PaginationNormalImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Post> data, bool isLoading, bool hasMore)
    normal,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return normal(data, isLoading, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Post> data, bool isLoading, bool hasMore)? normal,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return normal?.call(data, isLoading, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Post> data, bool isLoading, bool hasMore)? normal,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(data, isLoading, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaginationNormal value) normal,
    required TResult Function(_PaginationLoading value) loading,
    required TResult Function(_PaginationError value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaginationNormal value)? normal,
    TResult? Function(_PaginationLoading value)? loading,
    TResult? Function(_PaginationError value)? error,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaginationNormal value)? normal,
    TResult Function(_PaginationLoading value)? loading,
    TResult Function(_PaginationError value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _PaginationNormal implements PaginationState {
  const factory _PaginationNormal({
    required final List<Post> data,
    final bool isLoading,
    final bool hasMore,
  }) = _$PaginationNormalImpl;

  List<Post> get data;
  bool get isLoading;
  bool get hasMore;

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationNormalImplCopyWith<_$PaginationNormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginationLoadingImplCopyWith<$Res> {
  factory _$$PaginationLoadingImplCopyWith(
    _$PaginationLoadingImpl value,
    $Res Function(_$PaginationLoadingImpl) then,
  ) = __$$PaginationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaginationLoadingImplCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res, _$PaginationLoadingImpl>
    implements _$$PaginationLoadingImplCopyWith<$Res> {
  __$$PaginationLoadingImplCopyWithImpl(
    _$PaginationLoadingImpl _value,
    $Res Function(_$PaginationLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaginationLoadingImpl implements _PaginationLoading {
  const _$PaginationLoadingImpl();

  @override
  String toString() {
    return 'PaginationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaginationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Post> data, bool isLoading, bool hasMore)
    normal,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Post> data, bool isLoading, bool hasMore)? normal,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Post> data, bool isLoading, bool hasMore)? normal,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaginationNormal value) normal,
    required TResult Function(_PaginationLoading value) loading,
    required TResult Function(_PaginationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaginationNormal value)? normal,
    TResult? Function(_PaginationLoading value)? loading,
    TResult? Function(_PaginationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaginationNormal value)? normal,
    TResult Function(_PaginationLoading value)? loading,
    TResult Function(_PaginationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PaginationLoading implements PaginationState {
  const factory _PaginationLoading() = _$PaginationLoadingImpl;
}

/// @nodoc
abstract class _$$PaginationErrorImplCopyWith<$Res> {
  factory _$$PaginationErrorImplCopyWith(
    _$PaginationErrorImpl value,
    $Res Function(_$PaginationErrorImpl) then,
  ) = __$$PaginationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PaginationErrorImplCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res, _$PaginationErrorImpl>
    implements _$$PaginationErrorImplCopyWith<$Res> {
  __$$PaginationErrorImplCopyWithImpl(
    _$PaginationErrorImpl _value,
    $Res Function(_$PaginationErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$PaginationErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PaginationErrorImpl implements _PaginationError {
  const _$PaginationErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PaginationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationErrorImplCopyWith<_$PaginationErrorImpl> get copyWith =>
      __$$PaginationErrorImplCopyWithImpl<_$PaginationErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Post> data, bool isLoading, bool hasMore)
    normal,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Post> data, bool isLoading, bool hasMore)? normal,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Post> data, bool isLoading, bool hasMore)? normal,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaginationNormal value) normal,
    required TResult Function(_PaginationLoading value) loading,
    required TResult Function(_PaginationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaginationNormal value)? normal,
    TResult? Function(_PaginationLoading value)? loading,
    TResult? Function(_PaginationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaginationNormal value)? normal,
    TResult Function(_PaginationLoading value)? loading,
    TResult Function(_PaginationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PaginationError implements PaginationState {
  const factory _PaginationError(final String message) = _$PaginationErrorImpl;

  String get message;

  /// Create a copy of PaginationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationErrorImplCopyWith<_$PaginationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

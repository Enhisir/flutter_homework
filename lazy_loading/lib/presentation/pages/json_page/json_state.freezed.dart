// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$JsonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post data, bool isLoading, String? errorMessage)
    normal,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post data, bool isLoading, String? errorMessage)? normal,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post data, bool isLoading, String? errorMessage)? normal,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonInitial value) initial,
    required TResult Function(_JsonLoading value) loading,
    required TResult Function(_JsonNormal value) normal,
    required TResult Function(_JsonError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonInitial value)? initial,
    TResult? Function(_JsonLoading value)? loading,
    TResult? Function(_JsonNormal value)? normal,
    TResult? Function(_JsonError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonInitial value)? initial,
    TResult Function(_JsonLoading value)? loading,
    TResult Function(_JsonNormal value)? normal,
    TResult Function(_JsonError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonStateCopyWith<$Res> {
  factory $JsonStateCopyWith(JsonState value, $Res Function(JsonState) then) =
      _$JsonStateCopyWithImpl<$Res, JsonState>;
}

/// @nodoc
class _$JsonStateCopyWithImpl<$Res, $Val extends JsonState>
    implements $JsonStateCopyWith<$Res> {
  _$JsonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$JsonInitialImplCopyWith<$Res> {
  factory _$$JsonInitialImplCopyWith(
    _$JsonInitialImpl value,
    $Res Function(_$JsonInitialImpl) then,
  ) = __$$JsonInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JsonInitialImplCopyWithImpl<$Res>
    extends _$JsonStateCopyWithImpl<$Res, _$JsonInitialImpl>
    implements _$$JsonInitialImplCopyWith<$Res> {
  __$$JsonInitialImplCopyWithImpl(
    _$JsonInitialImpl _value,
    $Res Function(_$JsonInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$JsonInitialImpl implements _JsonInitial {
  const _$JsonInitialImpl();

  @override
  String toString() {
    return 'JsonState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JsonInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post data, bool isLoading, String? errorMessage)
    normal,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post data, bool isLoading, String? errorMessage)? normal,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post data, bool isLoading, String? errorMessage)? normal,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonInitial value) initial,
    required TResult Function(_JsonLoading value) loading,
    required TResult Function(_JsonNormal value) normal,
    required TResult Function(_JsonError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonInitial value)? initial,
    TResult? Function(_JsonLoading value)? loading,
    TResult? Function(_JsonNormal value)? normal,
    TResult? Function(_JsonError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonInitial value)? initial,
    TResult Function(_JsonLoading value)? loading,
    TResult Function(_JsonNormal value)? normal,
    TResult Function(_JsonError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _JsonInitial implements JsonState {
  const factory _JsonInitial() = _$JsonInitialImpl;
}

/// @nodoc
abstract class _$$JsonLoadingImplCopyWith<$Res> {
  factory _$$JsonLoadingImplCopyWith(
    _$JsonLoadingImpl value,
    $Res Function(_$JsonLoadingImpl) then,
  ) = __$$JsonLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JsonLoadingImplCopyWithImpl<$Res>
    extends _$JsonStateCopyWithImpl<$Res, _$JsonLoadingImpl>
    implements _$$JsonLoadingImplCopyWith<$Res> {
  __$$JsonLoadingImplCopyWithImpl(
    _$JsonLoadingImpl _value,
    $Res Function(_$JsonLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$JsonLoadingImpl implements _JsonLoading {
  const _$JsonLoadingImpl();

  @override
  String toString() {
    return 'JsonState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JsonLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post data, bool isLoading, String? errorMessage)
    normal,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post data, bool isLoading, String? errorMessage)? normal,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post data, bool isLoading, String? errorMessage)? normal,
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
    required TResult Function(_JsonInitial value) initial,
    required TResult Function(_JsonLoading value) loading,
    required TResult Function(_JsonNormal value) normal,
    required TResult Function(_JsonError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonInitial value)? initial,
    TResult? Function(_JsonLoading value)? loading,
    TResult? Function(_JsonNormal value)? normal,
    TResult? Function(_JsonError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonInitial value)? initial,
    TResult Function(_JsonLoading value)? loading,
    TResult Function(_JsonNormal value)? normal,
    TResult Function(_JsonError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _JsonLoading implements JsonState {
  const factory _JsonLoading() = _$JsonLoadingImpl;
}

/// @nodoc
abstract class _$$JsonNormalImplCopyWith<$Res> {
  factory _$$JsonNormalImplCopyWith(
    _$JsonNormalImpl value,
    $Res Function(_$JsonNormalImpl) then,
  ) = __$$JsonNormalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post data, bool isLoading, String? errorMessage});

  $PostCopyWith<$Res> get data;
}

/// @nodoc
class __$$JsonNormalImplCopyWithImpl<$Res>
    extends _$JsonStateCopyWithImpl<$Res, _$JsonNormalImpl>
    implements _$$JsonNormalImplCopyWith<$Res> {
  __$$JsonNormalImplCopyWithImpl(
    _$JsonNormalImpl _value,
    $Res Function(_$JsonNormalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$JsonNormalImpl(
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as Post,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get data {
    return $PostCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$JsonNormalImpl implements _JsonNormal {
  const _$JsonNormalImpl({
    required this.data,
    this.isLoading = false,
    this.errorMessage,
  });

  @override
  final Post data;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'JsonState.normal(data: $data, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonNormalImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isLoading, errorMessage);

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonNormalImplCopyWith<_$JsonNormalImpl> get copyWith =>
      __$$JsonNormalImplCopyWithImpl<_$JsonNormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post data, bool isLoading, String? errorMessage)
    normal,
    required TResult Function(String message) error,
  }) {
    return normal(data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post data, bool isLoading, String? errorMessage)? normal,
    TResult? Function(String message)? error,
  }) {
    return normal?.call(data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post data, bool isLoading, String? errorMessage)? normal,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(data, isLoading, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonInitial value) initial,
    required TResult Function(_JsonLoading value) loading,
    required TResult Function(_JsonNormal value) normal,
    required TResult Function(_JsonError value) error,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonInitial value)? initial,
    TResult? Function(_JsonLoading value)? loading,
    TResult? Function(_JsonNormal value)? normal,
    TResult? Function(_JsonError value)? error,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonInitial value)? initial,
    TResult Function(_JsonLoading value)? loading,
    TResult Function(_JsonNormal value)? normal,
    TResult Function(_JsonError value)? error,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _JsonNormal implements JsonState {
  const factory _JsonNormal({
    required final Post data,
    final bool isLoading,
    final String? errorMessage,
  }) = _$JsonNormalImpl;

  Post get data;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonNormalImplCopyWith<_$JsonNormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonErrorImplCopyWith<$Res> {
  factory _$$JsonErrorImplCopyWith(
    _$JsonErrorImpl value,
    $Res Function(_$JsonErrorImpl) then,
  ) = __$$JsonErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$JsonErrorImplCopyWithImpl<$Res>
    extends _$JsonStateCopyWithImpl<$Res, _$JsonErrorImpl>
    implements _$$JsonErrorImplCopyWith<$Res> {
  __$$JsonErrorImplCopyWithImpl(
    _$JsonErrorImpl _value,
    $Res Function(_$JsonErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$JsonErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$JsonErrorImpl implements _JsonError {
  const _$JsonErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'JsonState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonErrorImplCopyWith<_$JsonErrorImpl> get copyWith =>
      __$$JsonErrorImplCopyWithImpl<_$JsonErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post data, bool isLoading, String? errorMessage)
    normal,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post data, bool isLoading, String? errorMessage)? normal,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post data, bool isLoading, String? errorMessage)? normal,
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
    required TResult Function(_JsonInitial value) initial,
    required TResult Function(_JsonLoading value) loading,
    required TResult Function(_JsonNormal value) normal,
    required TResult Function(_JsonError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonInitial value)? initial,
    TResult? Function(_JsonLoading value)? loading,
    TResult? Function(_JsonNormal value)? normal,
    TResult? Function(_JsonError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonInitial value)? initial,
    TResult Function(_JsonLoading value)? loading,
    TResult Function(_JsonNormal value)? normal,
    TResult Function(_JsonError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _JsonError implements JsonState {
  const factory _JsonError(final String message) = _$JsonErrorImpl;

  String get message;

  /// Create a copy of JsonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonErrorImplCopyWith<_$JsonErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppErrorTearOff {
  const _$AppErrorTearOff();

// ignore: unused_element
  _AppError call({@required NetworkExceptions error}) {
    return _AppError(
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppError = _$AppErrorTearOff();

/// @nodoc
mixin _$AppError {
  NetworkExceptions get error;

  @JsonKey(ignore: true)
  $AppErrorCopyWith<AppError> get copyWith;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res>;
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res> implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  final AppError _value;
  // ignore: unused_field
  final $Res Function(AppError) _then;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed ? _value.error : error as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get error {
    if (_value.error == null) {
      return null;
    }
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$AppErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory _$AppErrorCopyWith(_AppError value, $Res Function(_AppError) then) =
      __$AppErrorCopyWithImpl<$Res>;
  @override
  $Res call({NetworkExceptions error});

  @override
  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$AppErrorCopyWithImpl<$Res> extends _$AppErrorCopyWithImpl<$Res>
    implements _$AppErrorCopyWith<$Res> {
  __$AppErrorCopyWithImpl(_AppError _value, $Res Function(_AppError) _then)
      : super(_value, (v) => _then(v as _AppError));

  @override
  _AppError get _value => super._value as _AppError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_AppError(
      error: error == freezed ? _value.error : error as NetworkExceptions,
    ));
  }
}

/// @nodoc
class _$_AppError implements _AppError {
  const _$_AppError({@required this.error}) : assert(error != null);

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'AppError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$AppErrorCopyWith<_AppError> get copyWith =>
      __$AppErrorCopyWithImpl<_AppError>(this, _$identity);
}

abstract class _AppError implements AppError {
  const factory _AppError({@required NetworkExceptions error}) = _$_AppError;

  @override
  NetworkExceptions get error;
  @override
  @JsonKey(ignore: true)
  _$AppErrorCopyWith<_AppError> get copyWith;
}

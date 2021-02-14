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
  _AppError call({@required String message}) {
    return _AppError(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppError = _$AppErrorTearOff();

/// @nodoc
mixin _$AppError {
  String get message;

  @JsonKey(ignore: true)
  $AppErrorCopyWith<AppError> get copyWith;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res> implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  final AppError _value;
  // ignore: unused_field
  final $Res Function(AppError) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$AppErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory _$AppErrorCopyWith(_AppError value, $Res Function(_AppError) then) =
      __$AppErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
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
    Object message = freezed,
  }) {
    return _then(_AppError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_AppError implements _AppError {
  const _$_AppError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AppError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$AppErrorCopyWith<_AppError> get copyWith =>
      __$AppErrorCopyWithImpl<_AppError>(this, _$identity);
}

abstract class _AppError implements AppError {
  const factory _AppError({@required String message}) = _$_AppError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$AppErrorCopyWith<_AppError> get copyWith;
}

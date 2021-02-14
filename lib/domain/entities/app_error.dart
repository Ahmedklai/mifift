import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_error.freezed.dart';

@freezed
abstract class AppError with _$AppError {
  const factory AppError({@required String message}) = _AppError;
}

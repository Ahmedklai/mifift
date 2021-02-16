import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mifift/domain/entities/network_exceptions.dart';

part 'app_error.freezed.dart';

@freezed
abstract class AppError with _$AppError {
  const factory AppError({@required NetworkExceptions error}) = _AppError;
}

import 'package:dartz/dartz.dart';
import 'package:mifift/domain/entities/app_error.dart';

abstract class AuthRespository {
  Future<Either<AppError, void>> signIn(
      String emailOrUserName, String password);
  Future<Either<AppError, void>> signUp();
  Future<Either<AppError, void>> logout();
}

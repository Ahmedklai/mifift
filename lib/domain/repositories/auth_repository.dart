import 'package:dartz/dartz.dart';
import 'package:mifift/domain/entities/app_error.dart';
import 'package:mifift/domain/entities/signup_body.dart';

abstract class AuthRespository {
  Future<Either<AppError, dynamic>> signIn(
      String emailOrUserName, String password);
  Future<Either<AppError, dynamic>> signUp(SingupBody body);
  Future<Either<AppError, dynamic>> logout();
}

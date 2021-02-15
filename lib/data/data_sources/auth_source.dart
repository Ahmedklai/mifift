import 'package:dartz/dartz.dart';

import '../../domain/entities/app_error.dart';


class AuthSource {
  Future<Either<AppError,void>> signIn(String emailOrUsername,String password){}
  Future<Either<AppError,void>> signUp(){}
  Future<Either<AppError,void>> logout(){}
}
import 'package:dartz/dartz.dart';
import 'package:mifift/data/data_sources/auth_source.dart';
import 'package:mifift/domain/entities/app_error.dart';
import 'package:mifift/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRespository {
  final AuthSource authSource;
  AuthRepositoryImpl(this.authSource);

  @override
  Future<Either<AppError, void>> signIn(
      String emailOrUserName, String password) async {
    try {
      final authResponse = await authSource.signIn(emailOrUserName, password);
      return Right(authResponse);
    } on Exception {
      return Left(AppError('something went wrong during signin'));
    }
  }

  @override
  Future<Either<AppError, void>> signUp() async {
    try {
      final authResponse = await authSource.signUp();
      return Right(authResponse);
    } on Exception {
      return Left(AppError('something went wrong during signup'));
    }
  }

  @override
  Future<Either<AppError, void>> logout() async {
    try {
      final authResponse = await authSource.logout();
      return Right(authResponse);
    } on Exception {
      return Left(AppError('something went wrong during logout'));
    }
  }
}

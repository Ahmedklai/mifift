import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mifift/data/data_sources/auth_source.dart';
import 'package:mifift/domain/entities/app_error.dart';
import 'package:mifift/domain/entities/network_exceptions.dart';
import 'package:mifift/domain/entities/signup_body.dart';
import 'package:mifift/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRespository {
  final AuthSource _authSource;
  final FlutterSecureStorage _storage ;
  AuthRepositoryImpl(this._authSource,this._storage);
  @override
  Future<Either<AppError,dynamic>> checkIfAuth(){}
  @override
  Future<Either<AppError, dynamic>> signIn(
      String emailOrUserName, String password) async {
    try {
      final authResponse = await _authSource.signIn(emailOrUserName, password);
      // _storage.write(key: "token", value: authResponse["token"] as String);
      return Right(authResponse);
    } catch(e) {
      
      return Left(AppError(error:NetworkExceptions.getDioException(e)));
    } 
  }

  @override
  Future<Either<AppError, dynamic>> signUp(SingupBody body) async {
    try {
      final authResponse = await _authSource.signUp(body);
      
      return Right(authResponse);
    } catch(e) {
      return Left(AppError(error:NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<AppError, dynamic>> logout() async {
    try {
      final authResponse = await _authSource.logout();
      return Right(authResponse);
    } catch(e) {
      return Left(AppError(error:NetworkExceptions.getDioException(e)));
    }
  }
}

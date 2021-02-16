import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mifift/data/repositories/auth_repository_implementation.dart';
import 'package:mifift/domain/entities/app_error.dart';
import 'package:mifift/domain/entities/network_exceptions.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepositoryImpl _authRepo;
  LoginCubit(this._authRepo) : super(const LoginState.initial());
  void checkAuth() async {
    emit(LoginState.loading());
    // TODO: implement check auth
  }
  void login(String emailOrUserName,String password) async {
    emit(LoginState.loading());
    final Either<AppError,dynamic> authResponse = await _authRepo.signIn(emailOrUserName, password);
    authResponse.fold((l) => emit( LoginState.error(NetworkExceptions.getErrorMessage(l.error))), (r) => LoginState.success());
  }
  void singup(String emailOrUserName,String password) async {
    emit(LoginState.loading());
    final Either<AppError,dynamic> authResponse = await _authRepo.signIn(emailOrUserName, password);
    authResponse.fold((l) => emit(LoginState.error(NetworkExceptions.getErrorMessage(l.error))), (r) => LoginState.success());
  }
  void logout(String emailOrUserName,String password) async {
    emit(LoginState.loading());
    final Either<AppError,dynamic> authResponse = await _authRepo.signIn(emailOrUserName, password);
    authResponse.fold((l) => emit(LoginState.error(NetworkExceptions.getErrorMessage(l.error))), (r) => LoginState.success());
  }
}

import 'package:mifift/core/api_client.dart';
import 'package:mifift/domain/entities/signup_body.dart';
import 'dart:convert';

abstract class AuthSource {
  Future<dynamic> signIn(String emailOrUserName, String password);
  Future<dynamic> signUp(SingupBody body);
  Future<dynamic> logout();
}

class AuthSourceImplementation extends AuthSource {
 
  final ApiClient _client;
  AuthSourceImplementation(this._client);
  @override
  Future<dynamic> logout() async {
    final response =   _client.get('auth/signup');
    return response;
  }

  @override
  Future<dynamic> signIn(String emailOrUserName, String password) async {
    final response =  _client.post('auth/login', data: json.encode({
      "usernameOrEmail":emailOrUserName,
      "password":password
    }));
    return response ;
  }

  @override
  Future<dynamic> signUp(SingupBody body) async {
    final response = _client.post('auth/signup', data:body.toJson() );
    return response;
  }
}

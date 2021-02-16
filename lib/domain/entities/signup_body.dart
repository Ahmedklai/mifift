import 'dart:convert';


class SingupBody {
  final String firstName;
  final String lastName;
  final String username;
  final String password;
  final String email;
  final String role = "CLIENT";

  
  const SingupBody(
  this.firstName,
  this.lastName,
  this.username,
  this.password,
  this.email,
);
  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'password': password,
      'email': email,
      'role':role
    };
  }

  factory SingupBody.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return SingupBody(
      map['firstName'],
      map['lastName'],
      map['username'],
      map['password'],
      map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SingupBody.fromJson(String source) => SingupBody.fromMap(json.decode(source));
}

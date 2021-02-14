import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'user_modal.freezed.dart';
part 'user_modal.g.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData(
    String firstName,
    String lastName,
    String username,
    String email,
    String phoneNumber,
    String password,
    bool isActive,
    String salt,
    String picture,
    GeneralInfo generalInformation,
  ) = _UserData;
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
abstract class GeneralInfo with _$GeneralInfo {
  const factory GeneralInfo(
    String id,
    String job,
    String gender,
    DateTime birthdate,
    int weight,
    int height,
    String goal,
  ) = _GeneralInfo;
  factory GeneralInfo.fromJson(Map<String, dynamic> json) =>
      _$GeneralInfoFromJson(json);
}

@freezed
abstract class UserAdress with _$UserAdress {
  const factory UserAdress(
    String id,
    String firstLineAddress,
    String secondLineAddress,
    DateTime postalCode,
    String cityCountry,
  ) = _UserAdress;
  factory UserAdress.fromJson(Map<String, dynamic> json) =>
      _$UserAdressFromJson(json);
}

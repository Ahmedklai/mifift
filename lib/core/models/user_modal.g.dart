// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$_$_UserDataFromJson(Map<String, dynamic> json) {
  return _$_UserData(
    json['firstName'] as String,
    json['lastName'] as String,
    json['username'] as String,
    json['email'] as String,
    json['phoneNumber'] as String,
    json['password'] as String,
    json['isActive'] as bool,
    json['salt'] as String,
    json['picture'] as String,
    json['generalInformation'] == null
        ? null
        : GeneralInfo.fromJson(
            json['generalInformation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'isActive': instance.isActive,
      'salt': instance.salt,
      'picture': instance.picture,
      'generalInformation': instance.generalInformation,
    };

_$_GeneralInfo _$_$_GeneralInfoFromJson(Map<String, dynamic> json) {
  return _$_GeneralInfo(
    json['id'] as String,
    json['job'] as String,
    json['gender'] as String,
    json['birthdate'] == null
        ? null
        : DateTime.parse(json['birthdate'] as String),
    json['weight'] as int,
    json['height'] as int,
    json['goal'] as String,
  );
}

Map<String, dynamic> _$_$_GeneralInfoToJson(_$_GeneralInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job': instance.job,
      'gender': instance.gender,
      'birthdate': instance.birthdate?.toIso8601String(),
      'weight': instance.weight,
      'height': instance.height,
      'goal': instance.goal,
    };

_$_UserAdress _$_$_UserAdressFromJson(Map<String, dynamic> json) {
  return _$_UserAdress(
    json['id'] as String,
    json['firstLineAddress'] as String,
    json['secondLineAddress'] as String,
    json['postalCode'] == null
        ? null
        : DateTime.parse(json['postalCode'] as String),
    json['cityCountry'] as String,
  );
}

Map<String, dynamic> _$_$_UserAdressToJson(_$_UserAdress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstLineAddress': instance.firstLineAddress,
      'secondLineAddress': instance.secondLineAddress,
      'postalCode': instance.postalCode?.toIso8601String(),
      'cityCountry': instance.cityCountry,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call(
      String firstName,
      String lastName,
      String username,
      String email,
      String phoneNumber,
      String password,
      bool isActive,
      String salt,
      String picture,
      GeneralInfo generalInformation) {
    return _UserData(
      firstName,
      lastName,
      username,
      email,
      phoneNumber,
      password,
      isActive,
      salt,
      picture,
      generalInformation,
    );
  }

// ignore: unused_element
  UserData fromJson(Map<String, Object> json) {
    return UserData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  String get firstName;
  String get lastName;
  String get username;
  String get email;
  String get phoneNumber;
  String get password;
  bool get isActive;
  String get salt;
  String get picture;
  GeneralInfo get generalInformation;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      String phoneNumber,
      String password,
      bool isActive,
      String salt,
      String picture,
      GeneralInfo generalInformation});

  $GeneralInfoCopyWith<$Res> get generalInformation;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object username = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object password = freezed,
    Object isActive = freezed,
    Object salt = freezed,
    Object picture = freezed,
    Object generalInformation = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      password: password == freezed ? _value.password : password as String,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
      salt: salt == freezed ? _value.salt : salt as String,
      picture: picture == freezed ? _value.picture : picture as String,
      generalInformation: generalInformation == freezed
          ? _value.generalInformation
          : generalInformation as GeneralInfo,
    ));
  }

  @override
  $GeneralInfoCopyWith<$Res> get generalInformation {
    if (_value.generalInformation == null) {
      return null;
    }
    return $GeneralInfoCopyWith<$Res>(_value.generalInformation, (value) {
      return _then(_value.copyWith(generalInformation: value));
    });
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      String phoneNumber,
      String password,
      bool isActive,
      String salt,
      String picture,
      GeneralInfo generalInformation});

  @override
  $GeneralInfoCopyWith<$Res> get generalInformation;
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object username = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object password = freezed,
    Object isActive = freezed,
    Object salt = freezed,
    Object picture = freezed,
    Object generalInformation = freezed,
  }) {
    return _then(_UserData(
      firstName == freezed ? _value.firstName : firstName as String,
      lastName == freezed ? _value.lastName : lastName as String,
      username == freezed ? _value.username : username as String,
      email == freezed ? _value.email : email as String,
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      password == freezed ? _value.password : password as String,
      isActive == freezed ? _value.isActive : isActive as bool,
      salt == freezed ? _value.salt : salt as String,
      picture == freezed ? _value.picture : picture as String,
      generalInformation == freezed
          ? _value.generalInformation
          : generalInformation as GeneralInfo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserData implements _UserData {
  const _$_UserData(
      this.firstName,
      this.lastName,
      this.username,
      this.email,
      this.phoneNumber,
      this.password,
      this.isActive,
      this.salt,
      this.picture,
      this.generalInformation)
      : assert(firstName != null),
        assert(lastName != null),
        assert(username != null),
        assert(email != null),
        assert(phoneNumber != null),
        assert(password != null),
        assert(isActive != null),
        assert(salt != null),
        assert(picture != null),
        assert(generalInformation != null);

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final bool isActive;
  @override
  final String salt;
  @override
  final String picture;
  @override
  final GeneralInfo generalInformation;

  @override
  String toString() {
    return 'UserData(firstName: $firstName, lastName: $lastName, username: $username, email: $email, phoneNumber: $phoneNumber, password: $password, isActive: $isActive, salt: $salt, picture: $picture, generalInformation: $generalInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.salt, salt) ||
                const DeepCollectionEquality().equals(other.salt, salt)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.generalInformation, generalInformation) ||
                const DeepCollectionEquality()
                    .equals(other.generalInformation, generalInformation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(salt) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(generalInformation);

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      String firstName,
      String lastName,
      String username,
      String email,
      String phoneNumber,
      String password,
      bool isActive,
      String salt,
      String picture,
      GeneralInfo generalInformation) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get username;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  bool get isActive;
  @override
  String get salt;
  @override
  String get picture;
  @override
  GeneralInfo get generalInformation;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith;
}

GeneralInfo _$GeneralInfoFromJson(Map<String, dynamic> json) {
  return _GeneralInfo.fromJson(json);
}

/// @nodoc
class _$GeneralInfoTearOff {
  const _$GeneralInfoTearOff();

// ignore: unused_element
  _GeneralInfo call(String id, String job, String gender, DateTime birthdate,
      int weight, int height, String goal) {
    return _GeneralInfo(
      id,
      job,
      gender,
      birthdate,
      weight,
      height,
      goal,
    );
  }

// ignore: unused_element
  GeneralInfo fromJson(Map<String, Object> json) {
    return GeneralInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GeneralInfo = _$GeneralInfoTearOff();

/// @nodoc
mixin _$GeneralInfo {
  String get id;
  String get job;
  String get gender;
  DateTime get birthdate;
  int get weight;
  int get height;
  String get goal;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GeneralInfoCopyWith<GeneralInfo> get copyWith;
}

/// @nodoc
abstract class $GeneralInfoCopyWith<$Res> {
  factory $GeneralInfoCopyWith(
          GeneralInfo value, $Res Function(GeneralInfo) then) =
      _$GeneralInfoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String job,
      String gender,
      DateTime birthdate,
      int weight,
      int height,
      String goal});
}

/// @nodoc
class _$GeneralInfoCopyWithImpl<$Res> implements $GeneralInfoCopyWith<$Res> {
  _$GeneralInfoCopyWithImpl(this._value, this._then);

  final GeneralInfo _value;
  // ignore: unused_field
  final $Res Function(GeneralInfo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object job = freezed,
    Object gender = freezed,
    Object birthdate = freezed,
    Object weight = freezed,
    Object height = freezed,
    Object goal = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      job: job == freezed ? _value.job : job as String,
      gender: gender == freezed ? _value.gender : gender as String,
      birthdate:
          birthdate == freezed ? _value.birthdate : birthdate as DateTime,
      weight: weight == freezed ? _value.weight : weight as int,
      height: height == freezed ? _value.height : height as int,
      goal: goal == freezed ? _value.goal : goal as String,
    ));
  }
}

/// @nodoc
abstract class _$GeneralInfoCopyWith<$Res>
    implements $GeneralInfoCopyWith<$Res> {
  factory _$GeneralInfoCopyWith(
          _GeneralInfo value, $Res Function(_GeneralInfo) then) =
      __$GeneralInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String job,
      String gender,
      DateTime birthdate,
      int weight,
      int height,
      String goal});
}

/// @nodoc
class __$GeneralInfoCopyWithImpl<$Res> extends _$GeneralInfoCopyWithImpl<$Res>
    implements _$GeneralInfoCopyWith<$Res> {
  __$GeneralInfoCopyWithImpl(
      _GeneralInfo _value, $Res Function(_GeneralInfo) _then)
      : super(_value, (v) => _then(v as _GeneralInfo));

  @override
  _GeneralInfo get _value => super._value as _GeneralInfo;

  @override
  $Res call({
    Object id = freezed,
    Object job = freezed,
    Object gender = freezed,
    Object birthdate = freezed,
    Object weight = freezed,
    Object height = freezed,
    Object goal = freezed,
  }) {
    return _then(_GeneralInfo(
      id == freezed ? _value.id : id as String,
      job == freezed ? _value.job : job as String,
      gender == freezed ? _value.gender : gender as String,
      birthdate == freezed ? _value.birthdate : birthdate as DateTime,
      weight == freezed ? _value.weight : weight as int,
      height == freezed ? _value.height : height as int,
      goal == freezed ? _value.goal : goal as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GeneralInfo implements _GeneralInfo {
  const _$_GeneralInfo(this.id, this.job, this.gender, this.birthdate,
      this.weight, this.height, this.goal)
      : assert(id != null),
        assert(job != null),
        assert(gender != null),
        assert(birthdate != null),
        assert(weight != null),
        assert(height != null),
        assert(goal != null);

  factory _$_GeneralInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_GeneralInfoFromJson(json);

  @override
  final String id;
  @override
  final String job;
  @override
  final String gender;
  @override
  final DateTime birthdate;
  @override
  final int weight;
  @override
  final int height;
  @override
  final String goal;

  @override
  String toString() {
    return 'GeneralInfo(id: $id, job: $job, gender: $gender, birthdate: $birthdate, weight: $weight, height: $height, goal: $goal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeneralInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.job, job) ||
                const DeepCollectionEquality().equals(other.job, job)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthdate, birthdate) ||
                const DeepCollectionEquality()
                    .equals(other.birthdate, birthdate)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(job) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthdate) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(goal);

  @JsonKey(ignore: true)
  @override
  _$GeneralInfoCopyWith<_GeneralInfo> get copyWith =>
      __$GeneralInfoCopyWithImpl<_GeneralInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeneralInfoToJson(this);
  }
}

abstract class _GeneralInfo implements GeneralInfo {
  const factory _GeneralInfo(String id, String job, String gender,
      DateTime birthdate, int weight, int height, String goal) = _$_GeneralInfo;

  factory _GeneralInfo.fromJson(Map<String, dynamic> json) =
      _$_GeneralInfo.fromJson;

  @override
  String get id;
  @override
  String get job;
  @override
  String get gender;
  @override
  DateTime get birthdate;
  @override
  int get weight;
  @override
  int get height;
  @override
  String get goal;
  @override
  @JsonKey(ignore: true)
  _$GeneralInfoCopyWith<_GeneralInfo> get copyWith;
}

UserAdress _$UserAdressFromJson(Map<String, dynamic> json) {
  return _UserAdress.fromJson(json);
}

/// @nodoc
class _$UserAdressTearOff {
  const _$UserAdressTearOff();

// ignore: unused_element
  _UserAdress call(String id, String firstLineAddress, String secondLineAddress,
      DateTime postalCode, String cityCountry) {
    return _UserAdress(
      id,
      firstLineAddress,
      secondLineAddress,
      postalCode,
      cityCountry,
    );
  }

// ignore: unused_element
  UserAdress fromJson(Map<String, Object> json) {
    return UserAdress.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserAdress = _$UserAdressTearOff();

/// @nodoc
mixin _$UserAdress {
  String get id;
  String get firstLineAddress;
  String get secondLineAddress;
  DateTime get postalCode;
  String get cityCountry;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserAdressCopyWith<UserAdress> get copyWith;
}

/// @nodoc
abstract class $UserAdressCopyWith<$Res> {
  factory $UserAdressCopyWith(
          UserAdress value, $Res Function(UserAdress) then) =
      _$UserAdressCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String firstLineAddress,
      String secondLineAddress,
      DateTime postalCode,
      String cityCountry});
}

/// @nodoc
class _$UserAdressCopyWithImpl<$Res> implements $UserAdressCopyWith<$Res> {
  _$UserAdressCopyWithImpl(this._value, this._then);

  final UserAdress _value;
  // ignore: unused_field
  final $Res Function(UserAdress) _then;

  @override
  $Res call({
    Object id = freezed,
    Object firstLineAddress = freezed,
    Object secondLineAddress = freezed,
    Object postalCode = freezed,
    Object cityCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      firstLineAddress: firstLineAddress == freezed
          ? _value.firstLineAddress
          : firstLineAddress as String,
      secondLineAddress: secondLineAddress == freezed
          ? _value.secondLineAddress
          : secondLineAddress as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as DateTime,
      cityCountry:
          cityCountry == freezed ? _value.cityCountry : cityCountry as String,
    ));
  }
}

/// @nodoc
abstract class _$UserAdressCopyWith<$Res> implements $UserAdressCopyWith<$Res> {
  factory _$UserAdressCopyWith(
          _UserAdress value, $Res Function(_UserAdress) then) =
      __$UserAdressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstLineAddress,
      String secondLineAddress,
      DateTime postalCode,
      String cityCountry});
}

/// @nodoc
class __$UserAdressCopyWithImpl<$Res> extends _$UserAdressCopyWithImpl<$Res>
    implements _$UserAdressCopyWith<$Res> {
  __$UserAdressCopyWithImpl(
      _UserAdress _value, $Res Function(_UserAdress) _then)
      : super(_value, (v) => _then(v as _UserAdress));

  @override
  _UserAdress get _value => super._value as _UserAdress;

  @override
  $Res call({
    Object id = freezed,
    Object firstLineAddress = freezed,
    Object secondLineAddress = freezed,
    Object postalCode = freezed,
    Object cityCountry = freezed,
  }) {
    return _then(_UserAdress(
      id == freezed ? _value.id : id as String,
      firstLineAddress == freezed
          ? _value.firstLineAddress
          : firstLineAddress as String,
      secondLineAddress == freezed
          ? _value.secondLineAddress
          : secondLineAddress as String,
      postalCode == freezed ? _value.postalCode : postalCode as DateTime,
      cityCountry == freezed ? _value.cityCountry : cityCountry as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserAdress implements _UserAdress {
  const _$_UserAdress(this.id, this.firstLineAddress, this.secondLineAddress,
      this.postalCode, this.cityCountry)
      : assert(id != null),
        assert(firstLineAddress != null),
        assert(secondLineAddress != null),
        assert(postalCode != null),
        assert(cityCountry != null);

  factory _$_UserAdress.fromJson(Map<String, dynamic> json) =>
      _$_$_UserAdressFromJson(json);

  @override
  final String id;
  @override
  final String firstLineAddress;
  @override
  final String secondLineAddress;
  @override
  final DateTime postalCode;
  @override
  final String cityCountry;

  @override
  String toString() {
    return 'UserAdress(id: $id, firstLineAddress: $firstLineAddress, secondLineAddress: $secondLineAddress, postalCode: $postalCode, cityCountry: $cityCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAdress &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstLineAddress, firstLineAddress) ||
                const DeepCollectionEquality()
                    .equals(other.firstLineAddress, firstLineAddress)) &&
            (identical(other.secondLineAddress, secondLineAddress) ||
                const DeepCollectionEquality()
                    .equals(other.secondLineAddress, secondLineAddress)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.cityCountry, cityCountry) ||
                const DeepCollectionEquality()
                    .equals(other.cityCountry, cityCountry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstLineAddress) ^
      const DeepCollectionEquality().hash(secondLineAddress) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(cityCountry);

  @JsonKey(ignore: true)
  @override
  _$UserAdressCopyWith<_UserAdress> get copyWith =>
      __$UserAdressCopyWithImpl<_UserAdress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserAdressToJson(this);
  }
}

abstract class _UserAdress implements UserAdress {
  const factory _UserAdress(
      String id,
      String firstLineAddress,
      String secondLineAddress,
      DateTime postalCode,
      String cityCountry) = _$_UserAdress;

  factory _UserAdress.fromJson(Map<String, dynamic> json) =
      _$_UserAdress.fromJson;

  @override
  String get id;
  @override
  String get firstLineAddress;
  @override
  String get secondLineAddress;
  @override
  DateTime get postalCode;
  @override
  String get cityCountry;
  @override
  @JsonKey(ignore: true)
  _$UserAdressCopyWith<_UserAdress> get copyWith;
}

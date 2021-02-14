// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'challenge_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChallengeData _$ChallengeDataFromJson(Map<String, dynamic> json) {
  return _ChallengeData.fromJson(json);
}

/// @nodoc
class _$ChallengeDataTearOff {
  const _$ChallengeDataTearOff();

// ignore: unused_element
  _ChallengeData call(
      String picture,
      String title,
      String category,
      int distance,
      int time,
      String description,
      int price,
      bool premium,
      bool highlited) {
    return _ChallengeData(
      picture,
      title,
      category,
      distance,
      time,
      description,
      price,
      premium,
      highlited,
    );
  }

// ignore: unused_element
  ChallengeData fromJson(Map<String, Object> json) {
    return ChallengeData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ChallengeData = _$ChallengeDataTearOff();

/// @nodoc
mixin _$ChallengeData {
  String get picture;
  String get title;
  String get category;
  int get distance;
  int get time;
  String get description;
  int get price;
  bool get premium;
  bool get highlited;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ChallengeDataCopyWith<ChallengeData> get copyWith;
}

/// @nodoc
abstract class $ChallengeDataCopyWith<$Res> {
  factory $ChallengeDataCopyWith(
          ChallengeData value, $Res Function(ChallengeData) then) =
      _$ChallengeDataCopyWithImpl<$Res>;
  $Res call(
      {String picture,
      String title,
      String category,
      int distance,
      int time,
      String description,
      int price,
      bool premium,
      bool highlited});
}

/// @nodoc
class _$ChallengeDataCopyWithImpl<$Res>
    implements $ChallengeDataCopyWith<$Res> {
  _$ChallengeDataCopyWithImpl(this._value, this._then);

  final ChallengeData _value;
  // ignore: unused_field
  final $Res Function(ChallengeData) _then;

  @override
  $Res call({
    Object picture = freezed,
    Object title = freezed,
    Object category = freezed,
    Object distance = freezed,
    Object time = freezed,
    Object description = freezed,
    Object price = freezed,
    Object premium = freezed,
    Object highlited = freezed,
  }) {
    return _then(_value.copyWith(
      picture: picture == freezed ? _value.picture : picture as String,
      title: title == freezed ? _value.title : title as String,
      category: category == freezed ? _value.category : category as String,
      distance: distance == freezed ? _value.distance : distance as int,
      time: time == freezed ? _value.time : time as int,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as int,
      premium: premium == freezed ? _value.premium : premium as bool,
      highlited: highlited == freezed ? _value.highlited : highlited as bool,
    ));
  }
}

/// @nodoc
abstract class _$ChallengeDataCopyWith<$Res>
    implements $ChallengeDataCopyWith<$Res> {
  factory _$ChallengeDataCopyWith(
          _ChallengeData value, $Res Function(_ChallengeData) then) =
      __$ChallengeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String picture,
      String title,
      String category,
      int distance,
      int time,
      String description,
      int price,
      bool premium,
      bool highlited});
}

/// @nodoc
class __$ChallengeDataCopyWithImpl<$Res>
    extends _$ChallengeDataCopyWithImpl<$Res>
    implements _$ChallengeDataCopyWith<$Res> {
  __$ChallengeDataCopyWithImpl(
      _ChallengeData _value, $Res Function(_ChallengeData) _then)
      : super(_value, (v) => _then(v as _ChallengeData));

  @override
  _ChallengeData get _value => super._value as _ChallengeData;

  @override
  $Res call({
    Object picture = freezed,
    Object title = freezed,
    Object category = freezed,
    Object distance = freezed,
    Object time = freezed,
    Object description = freezed,
    Object price = freezed,
    Object premium = freezed,
    Object highlited = freezed,
  }) {
    return _then(_ChallengeData(
      picture == freezed ? _value.picture : picture as String,
      title == freezed ? _value.title : title as String,
      category == freezed ? _value.category : category as String,
      distance == freezed ? _value.distance : distance as int,
      time == freezed ? _value.time : time as int,
      description == freezed ? _value.description : description as String,
      price == freezed ? _value.price : price as int,
      premium == freezed ? _value.premium : premium as bool,
      highlited == freezed ? _value.highlited : highlited as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChallengeData implements _ChallengeData {
  const _$_ChallengeData(this.picture, this.title, this.category, this.distance,
      this.time, this.description, this.price, this.premium, this.highlited)
      : assert(picture != null),
        assert(title != null),
        assert(category != null),
        assert(distance != null),
        assert(time != null),
        assert(description != null),
        assert(price != null),
        assert(premium != null),
        assert(highlited != null);

  factory _$_ChallengeData.fromJson(Map<String, dynamic> json) =>
      _$_$_ChallengeDataFromJson(json);

  @override
  final String picture;
  @override
  final String title;
  @override
  final String category;
  @override
  final int distance;
  @override
  final int time;
  @override
  final String description;
  @override
  final int price;
  @override
  final bool premium;
  @override
  final bool highlited;

  @override
  String toString() {
    return 'ChallengeData(picture: $picture, title: $title, category: $category, distance: $distance, time: $time, description: $description, price: $price, premium: $premium, highlited: $highlited)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChallengeData &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.premium, premium) ||
                const DeepCollectionEquality()
                    .equals(other.premium, premium)) &&
            (identical(other.highlited, highlited) ||
                const DeepCollectionEquality()
                    .equals(other.highlited, highlited)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(premium) ^
      const DeepCollectionEquality().hash(highlited);

  @JsonKey(ignore: true)
  @override
  _$ChallengeDataCopyWith<_ChallengeData> get copyWith =>
      __$ChallengeDataCopyWithImpl<_ChallengeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChallengeDataToJson(this);
  }
}

abstract class _ChallengeData implements ChallengeData {
  const factory _ChallengeData(
      String picture,
      String title,
      String category,
      int distance,
      int time,
      String description,
      int price,
      bool premium,
      bool highlited) = _$_ChallengeData;

  factory _ChallengeData.fromJson(Map<String, dynamic> json) =
      _$_ChallengeData.fromJson;

  @override
  String get picture;
  @override
  String get title;
  @override
  String get category;
  @override
  int get distance;
  @override
  int get time;
  @override
  String get description;
  @override
  int get price;
  @override
  bool get premium;
  @override
  bool get highlited;
  @override
  @JsonKey(ignore: true)
  _$ChallengeDataCopyWith<_ChallengeData> get copyWith;
}

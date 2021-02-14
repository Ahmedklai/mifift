// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'training_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TrainingData _$TrainingDataFromJson(Map<String, dynamic> json) {
  return _TrainingData.fromJson(json);
}

/// @nodoc
class _$TrainingDataTearOff {
  const _$TrainingDataTearOff();

// ignore: unused_element
  _TrainingData call(String title, int price, String picture, String document,
      String description, bool premium, String book, List<String> benefits) {
    return _TrainingData(
      title,
      price,
      picture,
      document,
      description,
      premium,
      book,
      benefits,
    );
  }

// ignore: unused_element
  TrainingData fromJson(Map<String, Object> json) {
    return TrainingData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TrainingData = _$TrainingDataTearOff();

/// @nodoc
mixin _$TrainingData {
  String get title;
  int get price;
  String get picture;
  String get document;
  String get description;
  bool get premium;
  String get book;
  List<String> get benefits;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TrainingDataCopyWith<TrainingData> get copyWith;
}

/// @nodoc
abstract class $TrainingDataCopyWith<$Res> {
  factory $TrainingDataCopyWith(
          TrainingData value, $Res Function(TrainingData) then) =
      _$TrainingDataCopyWithImpl<$Res>;
  $Res call(
      {String title,
      int price,
      String picture,
      String document,
      String description,
      bool premium,
      String book,
      List<String> benefits});
}

/// @nodoc
class _$TrainingDataCopyWithImpl<$Res> implements $TrainingDataCopyWith<$Res> {
  _$TrainingDataCopyWithImpl(this._value, this._then);

  final TrainingData _value;
  // ignore: unused_field
  final $Res Function(TrainingData) _then;

  @override
  $Res call({
    Object title = freezed,
    Object price = freezed,
    Object picture = freezed,
    Object document = freezed,
    Object description = freezed,
    Object premium = freezed,
    Object book = freezed,
    Object benefits = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as int,
      picture: picture == freezed ? _value.picture : picture as String,
      document: document == freezed ? _value.document : document as String,
      description:
          description == freezed ? _value.description : description as String,
      premium: premium == freezed ? _value.premium : premium as bool,
      book: book == freezed ? _value.book : book as String,
      benefits:
          benefits == freezed ? _value.benefits : benefits as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$TrainingDataCopyWith<$Res>
    implements $TrainingDataCopyWith<$Res> {
  factory _$TrainingDataCopyWith(
          _TrainingData value, $Res Function(_TrainingData) then) =
      __$TrainingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      int price,
      String picture,
      String document,
      String description,
      bool premium,
      String book,
      List<String> benefits});
}

/// @nodoc
class __$TrainingDataCopyWithImpl<$Res> extends _$TrainingDataCopyWithImpl<$Res>
    implements _$TrainingDataCopyWith<$Res> {
  __$TrainingDataCopyWithImpl(
      _TrainingData _value, $Res Function(_TrainingData) _then)
      : super(_value, (v) => _then(v as _TrainingData));

  @override
  _TrainingData get _value => super._value as _TrainingData;

  @override
  $Res call({
    Object title = freezed,
    Object price = freezed,
    Object picture = freezed,
    Object document = freezed,
    Object description = freezed,
    Object premium = freezed,
    Object book = freezed,
    Object benefits = freezed,
  }) {
    return _then(_TrainingData(
      title == freezed ? _value.title : title as String,
      price == freezed ? _value.price : price as int,
      picture == freezed ? _value.picture : picture as String,
      document == freezed ? _value.document : document as String,
      description == freezed ? _value.description : description as String,
      premium == freezed ? _value.premium : premium as bool,
      book == freezed ? _value.book : book as String,
      benefits == freezed ? _value.benefits : benefits as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TrainingData implements _TrainingData {
  const _$_TrainingData(this.title, this.price, this.picture, this.document,
      this.description, this.premium, this.book, this.benefits)
      : assert(title != null),
        assert(price != null),
        assert(picture != null),
        assert(document != null),
        assert(description != null),
        assert(premium != null),
        assert(book != null),
        assert(benefits != null);

  factory _$_TrainingData.fromJson(Map<String, dynamic> json) =>
      _$_$_TrainingDataFromJson(json);

  @override
  final String title;
  @override
  final int price;
  @override
  final String picture;
  @override
  final String document;
  @override
  final String description;
  @override
  final bool premium;
  @override
  final String book;
  @override
  final List<String> benefits;

  @override
  String toString() {
    return 'TrainingData(title: $title, price: $price, picture: $picture, document: $document, description: $description, premium: $premium, book: $book, benefits: $benefits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrainingData &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.premium, premium) ||
                const DeepCollectionEquality()
                    .equals(other.premium, premium)) &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)) &&
            (identical(other.benefits, benefits) ||
                const DeepCollectionEquality()
                    .equals(other.benefits, benefits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(premium) ^
      const DeepCollectionEquality().hash(book) ^
      const DeepCollectionEquality().hash(benefits);

  @JsonKey(ignore: true)
  @override
  _$TrainingDataCopyWith<_TrainingData> get copyWith =>
      __$TrainingDataCopyWithImpl<_TrainingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TrainingDataToJson(this);
  }
}

abstract class _TrainingData implements TrainingData {
  const factory _TrainingData(
      String title,
      int price,
      String picture,
      String document,
      String description,
      bool premium,
      String book,
      List<String> benefits) = _$_TrainingData;

  factory _TrainingData.fromJson(Map<String, dynamic> json) =
      _$_TrainingData.fromJson;

  @override
  String get title;
  @override
  int get price;
  @override
  String get picture;
  @override
  String get document;
  @override
  String get description;
  @override
  bool get premium;
  @override
  String get book;
  @override
  List<String> get benefits;
  @override
  @JsonKey(ignore: true)
  _$TrainingDataCopyWith<_TrainingData> get copyWith;
}

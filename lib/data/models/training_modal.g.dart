// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrainingData _$_$_TrainingDataFromJson(Map<String, dynamic> json) {
  return _$_TrainingData(
    json['title'] as String,
    json['price'] as int,
    json['picture'] as String,
    json['document'] as String,
    json['description'] as String,
    json['premium'] as bool,
    json['book'] as String,
    (json['benefits'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_TrainingDataToJson(_$_TrainingData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'picture': instance.picture,
      'document': instance.document,
      'description': instance.description,
      'premium': instance.premium,
      'book': instance.book,
      'benefits': instance.benefits,
    };

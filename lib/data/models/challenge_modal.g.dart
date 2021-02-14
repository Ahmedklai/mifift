// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChallengeData _$_$_ChallengeDataFromJson(Map<String, dynamic> json) {
  return _$_ChallengeData(
    json['picture'] as String,
    json['title'] as String,
    json['category'] as String,
    json['distance'] as int,
    json['time'] as int,
    json['description'] as String,
    json['price'] as int,
    json['premium'] as bool,
    json['highlited'] as bool,
  );
}

Map<String, dynamic> _$_$_ChallengeDataToJson(_$_ChallengeData instance) =>
    <String, dynamic>{
      'picture': instance.picture,
      'title': instance.title,
      'category': instance.category,
      'distance': instance.distance,
      'time': instance.time,
      'description': instance.description,
      'price': instance.price,
      'premium': instance.premium,
      'highlited': instance.highlited,
    };

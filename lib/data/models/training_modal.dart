import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'training_modal.freezed.dart';
part 'training_modal.g.dart';

@freezed
abstract class TrainingData with _$TrainingData {
  const factory TrainingData(
    String title,
    int price,
    String picture,
    String document,
    String description,
    bool premium,
    String book,
    List<String> benefits,
  ) = _TrainingData;
  factory TrainingData.fromJson(Map<String, dynamic> json) =>
      _$TrainingDataFromJson(json);
}

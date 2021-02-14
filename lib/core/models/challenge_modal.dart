import 'package:meta/meta.dart';

part 'challenge_modal.freezed.dart';
part 'challenge_modal.g.dart';

@immutable
abstract class ChallengeData with _$ChallengeData {
  const factory ChallengeData(
    String picture,
    String title,
    String category,
    int distance,
    int time,
    String description,
    int price,
    bool premium,
    bool highlited,
  ) = _ChallengeData;
  factory ChallengeData.fromJson(Map<String, dynamic> json) =>
      _$ChallengeDataFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_feed_model.freezed.dart';

part 'main_feed_model.g.dart';

@freezed
class MainFeedModel with _$MainFeedModel {
  factory MainFeedModel({
    @JsonKey(name: "timeline_url") final String? timelineUrl,
    @JsonKey(name: "user_url") final String? userUrl,
    @JsonKey(name: "repository_discussions_url")
    final String? repositoryDiscussionsUrl,
    @JsonKey(name: "repository_discussions_category_url")
    final String? repositoryDiscussionsCategoryUrl,
    @JsonKey(name: "security_advisories_url")
    final String? securityAdvisoriesUrl,
  }) = _MainFeedModel;

  factory MainFeedModel.fromJson(Map<String, dynamic> json) =>
      _$MainFeedModelFromJson(json);
}

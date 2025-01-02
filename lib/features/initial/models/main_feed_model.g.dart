// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainFeedModelImpl _$$MainFeedModelImplFromJson(Map<String, dynamic> json) =>
    _$MainFeedModelImpl(
      timelineUrl: json['timeline_url'] as String?,
      userUrl: json['user_url'] as String?,
      repositoryDiscussionsUrl: json['repository_discussions_url'] as String?,
      repositoryDiscussionsCategoryUrl:
          json['repository_discussions_category_url'] as String?,
      securityAdvisoriesUrl: json['security_advisories_url'] as String?,
    );

Map<String, dynamic> _$$MainFeedModelImplToJson(_$MainFeedModelImpl instance) =>
    <String, dynamic>{
      'timeline_url': instance.timelineUrl,
      'user_url': instance.userUrl,
      'repository_discussions_url': instance.repositoryDiscussionsUrl,
      'repository_discussions_category_url':
          instance.repositoryDiscussionsCategoryUrl,
      'security_advisories_url': instance.securityAdvisoriesUrl,
    };

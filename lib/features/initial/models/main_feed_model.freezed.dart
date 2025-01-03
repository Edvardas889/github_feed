// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainFeedModel _$MainFeedModelFromJson(Map<String, dynamic> json) {
  return _MainFeedModel.fromJson(json);
}

/// @nodoc
mixin _$MainFeedModel {
  @JsonKey(name: "timeline_url")
  String? get timelineUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "user_url")
  String? get userUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "repository_discussions_url")
  String? get repositoryDiscussionsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "repository_discussions_category_url")
  String? get repositoryDiscussionsCategoryUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "current_user_public_url")
  String? get currentUserPublicUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "security_advisories_url")
  String? get securityAdvisoriesUrl => throw _privateConstructorUsedError;

  /// Serializes this MainFeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainFeedModelCopyWith<MainFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFeedModelCopyWith<$Res> {
  factory $MainFeedModelCopyWith(
          MainFeedModel value, $Res Function(MainFeedModel) then) =
      _$MainFeedModelCopyWithImpl<$Res, MainFeedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "timeline_url") String? timelineUrl,
      @JsonKey(name: "user_url") String? userUrl,
      @JsonKey(name: "repository_discussions_url")
      String? repositoryDiscussionsUrl,
      @JsonKey(name: "repository_discussions_category_url")
      String? repositoryDiscussionsCategoryUrl,
      @JsonKey(name: "current_user_public_url") String? currentUserPublicUrl,
      @JsonKey(name: "security_advisories_url") String? securityAdvisoriesUrl});
}

/// @nodoc
class _$MainFeedModelCopyWithImpl<$Res, $Val extends MainFeedModel>
    implements $MainFeedModelCopyWith<$Res> {
  _$MainFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timelineUrl = freezed,
    Object? userUrl = freezed,
    Object? repositoryDiscussionsUrl = freezed,
    Object? repositoryDiscussionsCategoryUrl = freezed,
    Object? currentUserPublicUrl = freezed,
    Object? securityAdvisoriesUrl = freezed,
  }) {
    return _then(_value.copyWith(
      timelineUrl: freezed == timelineUrl
          ? _value.timelineUrl
          : timelineUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userUrl: freezed == userUrl
          ? _value.userUrl
          : userUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      repositoryDiscussionsUrl: freezed == repositoryDiscussionsUrl
          ? _value.repositoryDiscussionsUrl
          : repositoryDiscussionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      repositoryDiscussionsCategoryUrl: freezed ==
              repositoryDiscussionsCategoryUrl
          ? _value.repositoryDiscussionsCategoryUrl
          : repositoryDiscussionsCategoryUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currentUserPublicUrl: freezed == currentUserPublicUrl
          ? _value.currentUserPublicUrl
          : currentUserPublicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      securityAdvisoriesUrl: freezed == securityAdvisoriesUrl
          ? _value.securityAdvisoriesUrl
          : securityAdvisoriesUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainFeedModelImplCopyWith<$Res>
    implements $MainFeedModelCopyWith<$Res> {
  factory _$$MainFeedModelImplCopyWith(
          _$MainFeedModelImpl value, $Res Function(_$MainFeedModelImpl) then) =
      __$$MainFeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timeline_url") String? timelineUrl,
      @JsonKey(name: "user_url") String? userUrl,
      @JsonKey(name: "repository_discussions_url")
      String? repositoryDiscussionsUrl,
      @JsonKey(name: "repository_discussions_category_url")
      String? repositoryDiscussionsCategoryUrl,
      @JsonKey(name: "current_user_public_url") String? currentUserPublicUrl,
      @JsonKey(name: "security_advisories_url") String? securityAdvisoriesUrl});
}

/// @nodoc
class __$$MainFeedModelImplCopyWithImpl<$Res>
    extends _$MainFeedModelCopyWithImpl<$Res, _$MainFeedModelImpl>
    implements _$$MainFeedModelImplCopyWith<$Res> {
  __$$MainFeedModelImplCopyWithImpl(
      _$MainFeedModelImpl _value, $Res Function(_$MainFeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timelineUrl = freezed,
    Object? userUrl = freezed,
    Object? repositoryDiscussionsUrl = freezed,
    Object? repositoryDiscussionsCategoryUrl = freezed,
    Object? currentUserPublicUrl = freezed,
    Object? securityAdvisoriesUrl = freezed,
  }) {
    return _then(_$MainFeedModelImpl(
      timelineUrl: freezed == timelineUrl
          ? _value.timelineUrl
          : timelineUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userUrl: freezed == userUrl
          ? _value.userUrl
          : userUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      repositoryDiscussionsUrl: freezed == repositoryDiscussionsUrl
          ? _value.repositoryDiscussionsUrl
          : repositoryDiscussionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      repositoryDiscussionsCategoryUrl: freezed ==
              repositoryDiscussionsCategoryUrl
          ? _value.repositoryDiscussionsCategoryUrl
          : repositoryDiscussionsCategoryUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currentUserPublicUrl: freezed == currentUserPublicUrl
          ? _value.currentUserPublicUrl
          : currentUserPublicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      securityAdvisoriesUrl: freezed == securityAdvisoriesUrl
          ? _value.securityAdvisoriesUrl
          : securityAdvisoriesUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainFeedModelImpl implements _MainFeedModel {
  _$MainFeedModelImpl(
      {@JsonKey(name: "timeline_url") this.timelineUrl,
      @JsonKey(name: "user_url") this.userUrl,
      @JsonKey(name: "repository_discussions_url")
      this.repositoryDiscussionsUrl,
      @JsonKey(name: "repository_discussions_category_url")
      this.repositoryDiscussionsCategoryUrl,
      @JsonKey(name: "current_user_public_url") this.currentUserPublicUrl,
      @JsonKey(name: "security_advisories_url") this.securityAdvisoriesUrl});

  factory _$MainFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainFeedModelImplFromJson(json);

  @override
  @JsonKey(name: "timeline_url")
  final String? timelineUrl;
  @override
  @JsonKey(name: "user_url")
  final String? userUrl;
  @override
  @JsonKey(name: "repository_discussions_url")
  final String? repositoryDiscussionsUrl;
  @override
  @JsonKey(name: "repository_discussions_category_url")
  final String? repositoryDiscussionsCategoryUrl;
  @override
  @JsonKey(name: "current_user_public_url")
  final String? currentUserPublicUrl;
  @override
  @JsonKey(name: "security_advisories_url")
  final String? securityAdvisoriesUrl;

  @override
  String toString() {
    return 'MainFeedModel(timelineUrl: $timelineUrl, userUrl: $userUrl, repositoryDiscussionsUrl: $repositoryDiscussionsUrl, repositoryDiscussionsCategoryUrl: $repositoryDiscussionsCategoryUrl, currentUserPublicUrl: $currentUserPublicUrl, securityAdvisoriesUrl: $securityAdvisoriesUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainFeedModelImpl &&
            (identical(other.timelineUrl, timelineUrl) ||
                other.timelineUrl == timelineUrl) &&
            (identical(other.userUrl, userUrl) || other.userUrl == userUrl) &&
            (identical(
                    other.repositoryDiscussionsUrl, repositoryDiscussionsUrl) ||
                other.repositoryDiscussionsUrl == repositoryDiscussionsUrl) &&
            (identical(other.repositoryDiscussionsCategoryUrl,
                    repositoryDiscussionsCategoryUrl) ||
                other.repositoryDiscussionsCategoryUrl ==
                    repositoryDiscussionsCategoryUrl) &&
            (identical(other.currentUserPublicUrl, currentUserPublicUrl) ||
                other.currentUserPublicUrl == currentUserPublicUrl) &&
            (identical(other.securityAdvisoriesUrl, securityAdvisoriesUrl) ||
                other.securityAdvisoriesUrl == securityAdvisoriesUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timelineUrl,
      userUrl,
      repositoryDiscussionsUrl,
      repositoryDiscussionsCategoryUrl,
      currentUserPublicUrl,
      securityAdvisoriesUrl);

  /// Create a copy of MainFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainFeedModelImplCopyWith<_$MainFeedModelImpl> get copyWith =>
      __$$MainFeedModelImplCopyWithImpl<_$MainFeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainFeedModelImplToJson(
      this,
    );
  }
}

abstract class _MainFeedModel implements MainFeedModel {
  factory _MainFeedModel(
      {@JsonKey(name: "timeline_url") final String? timelineUrl,
      @JsonKey(name: "user_url") final String? userUrl,
      @JsonKey(name: "repository_discussions_url")
      final String? repositoryDiscussionsUrl,
      @JsonKey(name: "repository_discussions_category_url")
      final String? repositoryDiscussionsCategoryUrl,
      @JsonKey(name: "current_user_public_url")
      final String? currentUserPublicUrl,
      @JsonKey(name: "security_advisories_url")
      final String? securityAdvisoriesUrl}) = _$MainFeedModelImpl;

  factory _MainFeedModel.fromJson(Map<String, dynamic> json) =
      _$MainFeedModelImpl.fromJson;

  @override
  @JsonKey(name: "timeline_url")
  String? get timelineUrl;
  @override
  @JsonKey(name: "user_url")
  String? get userUrl;
  @override
  @JsonKey(name: "repository_discussions_url")
  String? get repositoryDiscussionsUrl;
  @override
  @JsonKey(name: "repository_discussions_category_url")
  String? get repositoryDiscussionsCategoryUrl;
  @override
  @JsonKey(name: "current_user_public_url")
  String? get currentUserPublicUrl;
  @override
  @JsonKey(name: "security_advisories_url")
  String? get securityAdvisoriesUrl;

  /// Create a copy of MainFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainFeedModelImplCopyWith<_$MainFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

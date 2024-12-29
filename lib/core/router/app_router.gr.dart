// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:github_feed/features/feed_details/feed_details_page.dart'
    as _i1;
import 'package:github_feed/features/initial/initial_page.dart' as _i2;

/// generated route for
/// [_i1.FeedDetailsPage]
class FeedDetailsRoute extends _i3.PageRouteInfo<void> {
  const FeedDetailsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          FeedDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedDetailsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.FeedDetailsPage();
    },
  );
}

/// generated route for
/// [_i2.InitialPage]
class InitialRoute extends _i3.PageRouteInfo<void> {
  const InitialRoute({List<_i3.PageRouteInfo>? children})
      : super(
          InitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.InitialPage();
    },
  );
}

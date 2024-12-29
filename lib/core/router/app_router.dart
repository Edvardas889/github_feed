import 'package:auto_route/auto_route.dart';
import 'package:github_feed/core/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: InitialRoute.page, path: '/'),
    AutoRoute(page: FeedDetailsRoute.page),
  ];
}
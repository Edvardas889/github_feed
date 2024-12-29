import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:github_feed/core/router/app_router.dart';
import 'package:github_feed/core/router/app_router.gr.dart';
import 'package:github_feed/features/initial/bloc/main_feed_cubit.dart';
import 'package:github_feed/features/initial/repositories/main_feed_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainFeedCubit(
        Get.find<MainFeedRepository>(),
      ),
      child: MaterialApp.router(
        title: "Github feed",
        routerDelegate: Get.find<AppRouter>().delegate(
          deepLinkBuilder: (_) {
            return DeepLink([InitialRoute()]);
          },
        ),
        routeInformationParser: Get.find<AppRouter>().defaultRouteParser(),
      ),
    );
  }
}

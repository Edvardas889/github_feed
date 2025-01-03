import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:github_feed/features/auth/bloc/auth_token_cubit.dart';
import 'package:github_feed/features/cache/app_box_service.dart';
import 'package:github_feed/features/initial/bloc/main_feed_cubit.dart';
import 'package:github_feed/features/initial/widgets/main_feed_card.dart';
import 'package:github_feed/features/initial/widgets/token_entry_card.dart';

@RoutePage()
class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _InitialPage();
  }
}

class _InitialPage extends StatefulWidget {
  const _InitialPage();

  @override
  State<_InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<_InitialPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    Future.delayed(Duration.zero, () {
      if (mounted) {
        context.read<AuthTokenCubit>().init();
        context.read<MainFeedCubit>().load();
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      Get.find<AppBoxService>().onResume();
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        context.read<MainFeedCubit>().load();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthTokenCubit, AuthTokenState>(
      builder: (context, authState) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Github feed",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<MainFeedCubit, MainFeedState>(
              builder: (context, state) {
                return state.maybeMap(
                  loading: (_) => Center(child: CircularProgressIndicator()),
                  loaded: (loadedFeedState) => Column(
                    children: [
                      if (authState is AuthenticatedAuthTokenState)
                        Container(
                          color: Colors.green,
                          child: Center(child: Text("TOKEN VALID")),
                        ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: loadedFeedState.mainFeedUrls
                              .map((e) => MainFeedCard(feedUrl: e))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                  error: (error) =>
                      Center(child: Text(error.errorMsg ?? "Unexpected error")),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
          floatingActionButton: authState is UnauthenticatedAuthTokenState
              ? FloatingActionButton.extended(
                  onPressed: onAuthTokenClick,
                  label: Text("Authenticate token"),
                )
              : FloatingActionButton.extended(
                  onPressed: onRemoveAuthTokenClick,
                  label: Text("Remove token"),
                ),
        );
      },
    );
  }

  void onAuthTokenClick() {
    showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      builder: (_) => TokenEntryCard(),
    );
  }

  void onRemoveAuthTokenClick() {
    context.read<AuthTokenCubit>().deleteToken();
    context.read<MainFeedCubit>().load(
          clearCache: true,
        );
  }
}

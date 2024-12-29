import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_feed/core/router/app_router.gr.dart';
import 'package:github_feed/features/initial/bloc/main_feed_cubit.dart';

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

class _InitialPageState extends State<_InitialPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      if (mounted) context.read<MainFeedCubit>().load();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github feed"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.amberAccent,
              child: Text("Hello"),
            ),
            FilledButton(
              onPressed: () {
                context.router.push(FeedDetailsRoute());
              },
              child: Text(
                "Go to details",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

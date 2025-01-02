import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_feed/core/router/app_router.gr.dart';

class MainFeedCard extends StatelessWidget {
  final String feedUrl;

  const MainFeedCard({
    super.key,
    required this.feedUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.router.push(FeedDetailsRoute(url: feedUrl));
      },
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(feedUrl),
      ),
    );
  }
}

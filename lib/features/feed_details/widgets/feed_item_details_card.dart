import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_feed/features/feed_details/utils/date_formatter.dart';
import 'package:webfeed_plus/webfeed_plus.dart';

class FeedItemDetailsCard extends StatelessWidget {
  final AtomItem atomItem;

  const FeedItemDetailsCard({
    super.key,
    required this.atomItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Text(
            Get.find<DateFormatter>().format(atomItem.published),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            atomItem.title ?? '',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

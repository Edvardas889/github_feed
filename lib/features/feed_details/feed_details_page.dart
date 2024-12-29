import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FeedDetailsPage extends StatelessWidget {
  const FeedDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feed details"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              child: Text("Details"),
            )
          ],
        ),
      ),
    );
  }
}

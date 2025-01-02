import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_feed/features/feed_details/bloc/feed_details_cubit.dart';
import 'package:github_feed/features/feed_details/widgets/feed_item_details_card.dart';

@RoutePage()
class FeedDetailsPage extends StatelessWidget {
  final String url;

  const FeedDetailsPage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return _FeedDetailsPage(url: url);
  }
}

class _FeedDetailsPage extends StatefulWidget {
  final String url;

  const _FeedDetailsPage({
    required this.url,
  });

  @override
  State<_FeedDetailsPage> createState() => _FeedDetailsPageState();
}

class _FeedDetailsPageState extends State<_FeedDetailsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      if (mounted) context.read<FeedDetailsCubit>().load(widget.url);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Feed details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<FeedDetailsCubit, FeedDetailsState>(
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (loadedFeedDetailsState) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: (loadedFeedDetailsState.atomFeed.items ?? [])
                      .map(
                        (e) => FeedItemDetailsCard(atomItem: e),
                      )
                      .toList(),
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}

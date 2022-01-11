import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/data.dart';
import '../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 10.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, i) {
                final video = videos[i];
                return VideoCard(video: video);
              }, childCount: videos.length),
            ),
          ),
        ],
      ),
    );
  }
}

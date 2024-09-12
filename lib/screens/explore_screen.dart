import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:igui/screens/widget/custom_appBar.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  List<String> exploreImages = [
    "assets/images/post/post-1.jpg",
    "assets/images/post/post-2.jpg",
    "assets/images/post/post-3.jpg",
    "assets/images/post/post-4.jpg",
    "assets/images/post/post-5.jpg",
    "assets/images/post/post-6.jpg",
    "assets/images/post/post-7.jpg",
    "assets/images/post/post-8.jpg",
    "assets/images/post/post-9.jpg",
    "assets/images/post/post-1.jpg",
    "assets/images/post/post-2.jpg",
    "assets/images/post/post-3.jpg",
    "assets/images/post/post-4.jpg",
    "assets/images/post/post-5.jpg",
    "assets/images/post/post-6.jpg",
    "assets/images/post/post-7.jpg",
    "assets/images/post/post-8.jpg",
    "assets/images/post/post-9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(),
        body: GridView.builder(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 10,
            pattern: [
              QuiltedGridTile(2, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
            ],
            repeatPattern: QuiltedGridRepeatPattern.inverted,
          ),
          itemCount: exploreImages.length,
          itemBuilder: (context, index) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  exploreImages[index],
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Icon(
                    Icons.video_collection,
                    color: Colors.white,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

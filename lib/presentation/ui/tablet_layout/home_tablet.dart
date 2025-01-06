import 'package:flutter/material.dart';
import 'package:my_blog/presentation/widgets/popular_post_item.dart';
import 'package:my_blog/presentation/widgets/tablet_appbar.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                titleSpacing: 0,
                pinned: true,
                title: const Text(
                  'My Blog',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  Icon(Icons.dark_mode),
                  SizedBox(width: 15),
                  Icon(Icons.search),
                ],
              ),
              SliverToBoxAdapter(
                child: Row(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: FeaturedPost(),
                    ),
                    Flexible(
                      child: PopularPost(),
                    ),
                  ],
                ),
              ),
              Space(height: 40),
              LatestPostTitle(),
              Space(height: 10),
              LatestPost(),
            ],
          )),
    );
  }
}

class LatestPost extends StatelessWidget {
  const LatestPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        maxCrossAxisExtent: 500,
        mainAxisExtent: 370,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return LatestPostItem();
      },
    );
  }
}

class LatestPostTitle extends StatelessWidget {
  const LatestPostTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(
            "LATEST POST",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class LatestPostItem extends StatelessWidget {
  const LatestPostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500, maxHeight: 225),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "Coding",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "Comment",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            "Cara Mengatasi Masalah Redirect Error di Google Search Console",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "01 Januari 2024",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class PopularPost extends StatelessWidget {
  const PopularPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "POPOLAR POST",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        PopularPostItem(),
        PopularPostItem(),
        PopularPostItem(),
        PopularPostItem(),
      ],
    );
  }
}

class FeaturedPost extends StatelessWidget {
  const FeaturedPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "FEATURED POST",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              AspectRatio(
                aspectRatio: 4 / 2.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Coding",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Comment",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Text(
                "Cara Mengatasi Masalah Redirect Error di Google Search Console",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "01 Januari 2024",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Space extends StatelessWidget {
  const Space({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(height: height),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram/core/mock_data/home.mock.data.dart';
import 'package:instagram/presentation/screens/homeScreen/widgets/add.story.card.dart';
import 'package:instagram/presentation/screens/homeScreen/widgets/post.card.dart';
import 'package:instagram/presentation/screens/homeScreen/widgets/story.card.dart';
import 'package:instagram/presentation/screens/homeScreen/widgets/custom.home.app.bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: stories.length + 1,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 80,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: index == 0
                            ? AddStoryCard()
                            : StoryCard(
                                story: stories[index - 1],
                              ),
                      );
                    }),
              ),
              Divider(
                height: 1,
              )
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return PostCard(
              post: posts[index],
            );
          }, childCount: posts.length),
        )
      ],
    );
  }
}

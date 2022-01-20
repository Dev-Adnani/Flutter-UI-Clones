import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/core/mock_data/explore.mock.data.dart';
import 'package:instagram/core/mock_data/home.mock.data.dart';
import 'package:instagram/core/models/post.model.dart';
import 'package:instagram/presentation/screens/exploreScreen/widgets/category.bar.dart';
import 'package:instagram/presentation/screens/exploreScreen/widgets/explore.app.bar.dart';
import 'package:instagram/presentation/screens/exploreScreen/widgets/explore.tile.dart';
import 'package:instagram/presentation/screens/exploreScreen/widgets/persistent.header.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            ExploreAppBar(),
            SliverPersistentHeader(
              pinned: true,
              delegate: PersistentHeader(
                child: CategoryBar(
                  categories: mockCategories,
                ),
              ),
            ),
            SliverStaggeredGrid.countBuilder(
              mainAxisSpacing: 1,
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              staggeredTileBuilder: (int index) {
                int modedIndex = index % 20;
                int cXCellCount = modedIndex == 11 ? 2 : 1;
                double mXCellCount = 1;

                if (modedIndex == 2 || modedIndex == 11) {
                  mXCellCount = 2;
                }

                return StaggeredTile.count(cXCellCount, mXCellCount);
              },
              itemBuilder: (BuildContext context, int index) {
                return ExploreTile(
                  post: Post(
                      id: 'id',
                      postedBy: currentUser,
                      title: 'title',
                      loc: 'loc',
                      imgUrl:
                          'https://picsum.photos/id/${1047 + index}/400/${index % 20 == 2 ? 885 : 400}',
                      caption: 'caption',
                      timeago: 'timeago',
                      totalLikes: 'totalLikes',
                      totalComments: 'totalComments',
                      isLiked: false,
                      isBookmarked: true),
                );
              },
              itemCount: 30,
            )
          ],
        ),
      ),
    );
  }
}

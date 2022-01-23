import 'package:flutter/material.dart';
import 'package:instagram/presentation/screens/exploreScreen/widgets/persistent.header.dart';
import 'package:instagram/presentation/screens/profileScreen/widgets/profile.app.bar.dart';
import 'package:instagram/presentation/screens/profileScreen/widgets/profile.header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, index) {
          return [
            ProfileAppBar(),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                child: ProfileHeader(),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: PersistentHeader(
                child: TabBar(
                  indicatorWeight: 1,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on),
                    ),
                    Tab(
                      icon: Icon(Icons.assignment_ind_outlined),
                    ),
                  ],
                ),
                mxExtent: 50,
                mnExtent: 50,
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/${1068 + index}/500/500'),
                          ),
                        ),
                      );
                    },
                    childCount: 17,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                  ),
                ),
              ],
            ),
            CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/id/${1047 + index}/500/500'),
                        )),
                      );
                    },
                    childCount: 17,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

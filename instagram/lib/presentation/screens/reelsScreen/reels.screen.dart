import 'package:flutter/material.dart';
import 'package:instagram/core/mock_data/reel.mock.data.dart';
import 'package:instagram/presentation/screens/reelsScreen/widgets/detail.bar.dart';
import 'package:instagram/presentation/screens/reelsScreen/widgets/side.action.bar.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Reels',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo_camera_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: PageView.builder(
        itemCount: reels.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://picsum.photos/id/${1047 + index}/800/1080'),
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                        ],
                        begin: Alignment(0, -0.75),
                        end: Alignment(0, -0.1),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                        ],
                        end: Alignment(0, -0.75),
                        begin: Alignment(0, -0.1),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            flex: 14,
                            child: ReelDetail(
                              reel: reels[index],
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: SideActionBarReels(
                              reel: reels[index],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

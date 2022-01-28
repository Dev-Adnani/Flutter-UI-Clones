import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder/app/constant/app.colors.dart';
import 'package:tinder/presentation/screens/ChatScreen/chat.screen.dart';
import 'package:tinder/presentation/screens/HomeScreen/home.screen.dart';
import 'package:tinder/presentation/screens/LikesScreen/likes.screen.dart';
import 'package:tinder/presentation/screens/ProfileScreen/profile.screen.dart';

class TopNavigationBar extends StatefulWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

  @override
  _TopNavigationBarState createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: HomeAppBar(),
      ),
      body: getBody(),
    );
  }

  HomeAppBar() {
    var items = [
      pageIndex == 0
          ? "assets/images/explore_active_icon.svg"
          : "assets/images/explore_icon.svg",
      pageIndex == 1
          ? "assets/images/likes_active_icon.svg"
          : "assets/images/likes_icon.svg",
      pageIndex == 2
          ? "assets/images/chat_active_icon.svg"
          : "assets/images/chat_icon.svg",
      pageIndex == 3
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return AppBar(
      backgroundColor: white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = index;
                });
              },
              icon: SvgPicture.asset(items[index]),
            );
          }),
        ),
      ),
    );
  }

  getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomeScreen(),
        LikesScreen(),
        ChatScreen(),
        ProfileScreen(),
      ],
    );
  }
}

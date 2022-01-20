import 'package:flutter/material.dart';
import 'package:instagram/presentation/screens/exploreScreen/explore.screen.dart';
import 'package:instagram/presentation/screens/homeScreen/home.screen.dart';
import 'package:instagram/presentation/screens/profileScreen/profile.screen.dart';
import 'package:instagram/presentation/screens/reelsScreen/reels.screen.dart';
import 'package:instagram/presentation/screens/shopScreen/shop.screen.dart';
import 'package:instagram/presentation/widgets/bottom.nav.bar.dart';

class NavigationHandler extends StatefulWidget {
  const NavigationHandler({Key? key}) : super(key: key);

  @override
  _NavigationHandlerState createState() => _NavigationHandlerState();
}

class _NavigationHandlerState extends State<NavigationHandler> {
  int _selectedPageIndex = 0;
  static const List<Widget> _appPages = [
    HomeScreen(),
    ExploreScreen(),
    ReelsScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onTap: _onIconTapped,
        selectedPageIndex: _selectedPageIndex,
      ),
    );
  }
}

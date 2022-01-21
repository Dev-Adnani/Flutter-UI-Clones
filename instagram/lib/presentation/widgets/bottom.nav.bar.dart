import 'package:flutter/material.dart';
import 'package:instagram/core/mock_data/home.mock.data.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedPageIndex,
    required this.onTap,
  }) : super(key: key);
  final int selectedPageIndex;
  final Function onTap;
  final double _iconSize = 30;

  Widget build(BuildContext context) {
    return BottomAppBar(
      color: selectedPageIndex == 2 ? Colors.black : Colors.white,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => {onTap(0)},
              iconSize: _iconSize,
              color: selectedPageIndex == 2 ? Colors.white : Colors.black,
              icon: Icon(
                  selectedPageIndex == 0 ? Icons.home : Icons.home_outlined),
            ),
            IconButton(
              onPressed: () => {onTap(1)},
              iconSize: _iconSize,
              color: selectedPageIndex == 2 ? Colors.white : Colors.black,
              icon: Icon(selectedPageIndex == 1
                  ? Icons.search
                  : Icons.search_outlined),
            ),
            IconButton(
              onPressed: () => {onTap(2)},
              iconSize: _iconSize,
              color: selectedPageIndex == 2 ? Colors.white : Colors.black,
              icon: Icon(selectedPageIndex == 2
                  ? Icons.smart_display
                  : Icons.smart_display_outlined),
            ),
            IconButton(
              onPressed: () => {onTap(3)},
              iconSize: _iconSize,
              color: selectedPageIndex == 2 ? Colors.white : Colors.black,
              icon: Icon(selectedPageIndex == 3
                  ? Icons.local_mall
                  : Icons.local_mall_outlined),
            ),
            InkWell(
              onTap: () => {onTap(4)},
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: _iconSize / 2,
                backgroundImage: NetworkImage(currentUser.profilePhoto),
              ),
            )
          ],
        ),
      ),
    );
  }
}

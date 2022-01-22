import 'package:flutter/material.dart';

class ShopAppBar extends StatelessWidget {
  const ShopAppBar({
    Key? key,
    required this.showSearchBar,
  }) : super(key: key);
  final bool showSearchBar;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      pinned: true,
      centerTitle: false,
      title: showSearchBar
          ? Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              child: TextField(
                cursorColor: Colors.grey.shade600,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.grey.shade600,
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            )
          : Text(
              'Shop',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.class__outlined),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.dehaze_outlined),
        ),
      ],
    );
  }
}

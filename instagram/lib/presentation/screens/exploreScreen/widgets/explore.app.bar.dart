import 'package:flutter/material.dart';

class ExploreAppBar extends StatelessWidget {
  const ExploreAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      centerTitle: false,
      elevation: 0,
      title: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade300,
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
      ),
    );
  }
}

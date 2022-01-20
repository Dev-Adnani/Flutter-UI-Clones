import 'package:flutter/material.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({
    Key? key,
    required this.categories,
  }) : super(key: key);
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade500,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

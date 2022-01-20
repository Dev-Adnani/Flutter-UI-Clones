import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      centerTitle: false,
      title: Text(
        'Instagram',
        maxLines: 1,
        style: GoogleFonts.novaCut(
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.add_box_outlined),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.favorite_border_outlined),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.send_outlined),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      centerTitle: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.https_outlined,
              size: 18,
            ),
          ),
          Text(
            'deeevvvvvv_',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.add_box_outlined),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.dehaze_rounded),
        ),
      ],
    );
  }
}

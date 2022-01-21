import 'package:flutter/material.dart';
import 'package:instagram/core/models/reel.model.dart';

class SideActionBarReels extends StatelessWidget {
  const SideActionBarReels({
    Key? key,
    required this.reel,
  }) : super(key: key);
  final Reel reel;

  final double _iconSize = 28;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  reel.isLiked ? Icons.favorite : Icons.favorite_outline,
                  color: reel.isLiked ? Colors.red : Colors.white,
                ),
                iconSize: _iconSize,
              ),
              Text(
                reel.totalLikes,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                ),
                iconSize: _iconSize,
              ),
              Text(
                reel.totalComments,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_outlined,
                  color: Colors.white,
                ),
                iconSize: _iconSize,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                iconSize: _iconSize,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(reel.postedBy.profilePhoto),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

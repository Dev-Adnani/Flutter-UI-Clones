import 'package:flutter/material.dart';

import 'package:instagram/core/models/story.model.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
    required this.story,
  }) : super(key: key);
  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow.shade600,
              ],
            ),
            border: Border.all(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(50),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30,
              backgroundImage: NetworkImage(story.postedBy.profilePhoto),
            ),
          ),
        ),
        Spacer(),
        Text(
          story.postedBy.userName,
          maxLines: 1,
          style: TextStyle(
            color: Colors.black,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}

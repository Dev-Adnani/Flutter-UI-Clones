import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import 'package:instagram/core/models/reel.model.dart';
import 'package:marquee/marquee.dart';

class ReelDetail extends StatelessWidget {
  final Reel reel;
  const ReelDetail({
    Key? key,
    required this.reel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text(
              reel.postedBy.userName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(reel.postedBy.profilePhoto),
              radius: 14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ExpandableText(
              reel.caption,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.5),
              expandText: 'more',
              collapseText: 'less',
              expandOnTextTap: true,
              collapseOnTextTap: true,
              maxLines: 1,
              linkColor: Colors.grey,
            ),
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 5,
            title: reel.isTagged
                ? Row(
                    children: [
                      Container(
                        height: 20,
                        width: 125,
                        child: Marquee(
                          velocity: 10,
                          text: '${reel.audioTitle} * ',
                          scrollAxis: Axis.horizontal,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Icon(
                          Icons.person_outline_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          reel.taggedUser.userName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  )
                : Text(
                    reel.audioTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
            leading: Icon(
              Icons.graphic_eq_outlined,
              size: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram/core/models/post.model.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.post}) : super(key: key);
  final double _iconSize = 30;
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                post.postedBy.userName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              subtitle: Text(
                post.loc,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(post.imgUrl),
              ),
              trailing: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
            Image.network(
              post.imgUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: post.isLiked
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_outline),
                  iconSize: _iconSize,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.comment_outlined),
                  iconSize: _iconSize,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_outlined),
                  iconSize: _iconSize,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: post.isBookmarked
                      ? Icon(Icons.bookmark)
                      : Icon(Icons.bookmark_outline),
                  iconSize: _iconSize,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${post.totalLikes} Likes',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '${post.postedBy.userName}',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: '${post.caption}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('View All ${post.totalComments} Comments'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(post.timeago),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

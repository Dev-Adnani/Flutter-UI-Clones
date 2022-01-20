import 'package:instagram/core/models/user.model.dart';

class Post {
  final String id;
  final User postedBy;
  final String title;
  final String loc;
  final String imgUrl;
  final String caption;
  final String timeago;
  final String totalLikes;
  final String totalComments;
  final bool isLiked;
  final bool isBookmarked;
  Post({
    required this.id,
    required this.postedBy,
    required this.title,
    required this.loc,
    required this.imgUrl,
    required this.caption,
    required this.timeago,
    required this.totalLikes,
    required this.totalComments,
    required this.isLiked,
    required this.isBookmarked,
  });
}

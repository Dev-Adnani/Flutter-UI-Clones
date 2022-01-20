import 'package:instagram/core/models/user.model.dart';

class Story {
  final String id;
  final User postedBy;
  Story({
    required this.id,
    required this.postedBy,
  });
}

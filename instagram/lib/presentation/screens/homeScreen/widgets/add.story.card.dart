import 'package:flutter/material.dart';
import 'package:instagram/core/mock_data/home.mock.data.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 32,
              backgroundImage: NetworkImage(currentUser.profilePhoto),
            ),
            Positioned(
              top: 40,
              left: 40,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  iconSize: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Spacer(),
        Text(
          'Your Story',
          maxLines: 1,
          style: TextStyle(
            color: Colors.grey,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}

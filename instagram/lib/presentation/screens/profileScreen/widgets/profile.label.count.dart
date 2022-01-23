import 'package:flutter/material.dart';

class ProfileLabelCount extends StatelessWidget {
  const ProfileLabelCount(
      {Key? key, required this.labelText, required this.count})
      : super(key: key);
  final String labelText;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            count,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          Text(
            labelText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 13.5,
            ),
          ),
        ],
      ),
    );
  }
}

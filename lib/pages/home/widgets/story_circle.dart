import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/56166862?v=4',
              ),
            ),
          ),
        ),
        Text(
          'Prioli',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  final bool isPostWidget;

  const StoryCircle({this.isPostWidget = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: isPostWidget ? 40 : 62,
          width: isPostWidget ? 40 : 62,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 20, 147),
                Colors.orange,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            height: isPostWidget ? 36 : 58,
            width: isPostWidget ? 36 : 58,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: CircleAvatar(
              radius: isPostWidget ? 16 : 26,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/56166862?v=4',
              ),
            ),
          ),
        ),
        if (!isPostWidget)
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

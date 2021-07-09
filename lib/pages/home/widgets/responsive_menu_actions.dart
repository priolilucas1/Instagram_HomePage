import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResponsiveMenuActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.home,
            color: Colors.white,
            size: 26,
          ),
        ),
        SizedBox(width: 4),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.white,
                size: 20,
              ),
            ),
            Positioned(
              top: 4,
              right: 2,
              child: Container(
                alignment: Alignment.center,
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 4),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.compass,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(width: 4),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(width: 14),
        CircleAvatar(
          radius: 14,
          backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/56166862?v=4',
          ),
        )
      ],
    );
  }
}

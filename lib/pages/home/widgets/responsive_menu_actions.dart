import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ),
        SizedBox(width: 4),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
        SizedBox(width: 4),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send),
          iconSize: 20,
        ),
        SizedBox(width: 4),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
          iconSize: 20,
        ),
        SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/56166862?v=4',
          ),
        )
      ],
    );
  }
}

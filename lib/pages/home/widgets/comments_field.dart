import 'package:flutter/material.dart';

class CommentsField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 6),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Text(
            'Ver todos os 2.350 comentários ',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: 'esterfontes21 ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Lindo!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 6),
        Text.rich(
          TextSpan(
            text: 'edsheeran ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'You are Awesome bro!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 6),
        Text.rich(
          TextSpan(
            text: 'coldplay ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Come sing with us 🚀',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

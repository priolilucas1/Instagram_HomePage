import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SuggestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/56166862?v=4',
            ),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'lucasprioli1',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 4),
                Text(
                  'Seguido(a) por esterfontes21 e...',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Seguir',
                style: TextStyle(
                  color: Color(0xFF0396F6),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram_home_page/pages/home/widgets/comments_field.dart';
import 'package:instagram_home_page/pages/home/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.only(bottom: desktop ? 20 : 0),
      child: Container(
        decoration: desktop
            ? BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.black,
              )
            : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
              child: Row(
                children: [
                  StoryCircle(isPostWidget: true),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'priolilucas1',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.more_horiz_sharp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Image.network(
              'https://avatars.githubusercontent.com/u/56166862?v=4',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        iconSize: 24,
                      ),
                      SizedBox(width: 4),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.messenger_outlined,
                          color: Colors.white,
                        ),
                        iconSize: 24,
                      ),
                      SizedBox(width: 4),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        iconSize: 24,
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                    iconSize: 24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/56166862?v=4',
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(width: 4),
                      Text.rich(
                        TextSpan(
                          text: 'Curtido por ',
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: 'esterfontes21 ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'e ',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'outras 127 pessoas',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CommentsField(),
                  const SizedBox(height: 10),
                  Text(
                    'HÁ 1 HORA',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            if (desktop) ...[
              Divider(
                color: Colors.white,
                thickness: 0.2,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 4),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 13),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Adicione um comentário...',
                          isCollapsed: true,
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          'Publicar',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}

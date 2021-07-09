import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_home_page/pages/home/widgets/suggestion_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 44, 20, 0),
        width: 300,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
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
                          'priolilucas1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Lucas Prioli',
                          style: TextStyle(
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
                        'Mudar',
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
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.black54,
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sugestões para você',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[500],
                        ),
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Ver tudo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  SuggestionItem(),
                  SuggestionItem(),
                  SuggestionItem(),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Sobre • Ajuda • Imprensa • API • Carreiras • Privacidade',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Termos • Localizações • Principais contas • Idioma',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '© 2021 INSTAGRAM DO FACEBOOK',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

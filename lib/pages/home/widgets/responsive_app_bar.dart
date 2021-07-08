import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_home_page/pages/home/widgets/responsive_menu_actions.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    'Instagram',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Billabong',
                    ),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                ],
                child: Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 4),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: TextField(
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isCollapsed: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                ],
                replacement: ResponsiveMenuActions(),
                child: Expanded(
                  child: ResponsiveMenuActions(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

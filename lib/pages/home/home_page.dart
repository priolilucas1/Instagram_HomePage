import 'package:flutter/material.dart';
import 'package:instagram_home_page/pages/home/widgets/post_widget.dart';
import 'package:instagram_home_page/pages/home/widgets/responsive_app_bar.dart';
import 'package:instagram_home_page/pages/home/widgets/right_panel.dart';
import 'package:instagram_home_page/pages/home/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 950),
          child: Row(
            children: [
              Expanded(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView(
                    children: [
                      StoriesList(),
                      PostWidget(),
                      PostWidget(),
                    ],
                  ),
                ),
              ),
              RightPanel(),
            ],
          ),
        ),
      ),
    );
  }
}

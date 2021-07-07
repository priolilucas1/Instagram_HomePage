import 'package:flutter/material.dart';
import 'package:instagram_home_page/pages/home/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      margin: EdgeInsets.symmetric(vertical: mobile ? 15 : 35),
      height: 110,
      child: ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 20,
        itemBuilder: (_, index) => StoryCircle(),
      ),
    );
  }
}

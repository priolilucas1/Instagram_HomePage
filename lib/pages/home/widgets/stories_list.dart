import 'package:flutter/material.dart';
import 'package:instagram_home_page/pages/home/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade600),
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      margin: EdgeInsets.only(top: mobile ? 15 : 30, bottom: 20),
      height: 120,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemCount: 18,
          itemBuilder: (_, index) => StoryCircle(),
        ),
      ),
    );
  }
}

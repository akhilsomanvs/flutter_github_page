import 'dart:math';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/app_utils/global_methods.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/views/components/skill_avatar.dart';

class FindMeAtWidget extends StatelessWidget {
  FindMeAtWidget({Key? key, this.isVertical = true}) : super(key: key);
  final bool isVertical;

  final List<_ContactData> dataList = [
    _ContactData("https://github.com/akhilsomanvs", "contact/contact_github.png"),
    _ContactData("https://www.linkedin.com/in/akhilsomanvs/", "contact/contact_linkedin.png"),
    _ContactData("https://stackoverflow.com/users/5251407/akhil-soman", "contact/contact_stackoverflow.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: -pi / 20,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(12.vdp()),
                child: Text(
                  "Find me at",
                  style: AppTheme.textTheme.headline1.copyWith(color: colorMainLight),
                ),
              ),
            ),
          ),
          VSpace(24),
          _getChildren(),
        ],
      ),
    );
  }

  _getChildren() {
    List<Widget> childrenList = [];
    for (var element in dataList) {
      if (isVertical) {
        childrenList.add(VSpace(8));
      } else {
        childrenList.add(HSpace(8));
      }
      childrenList.add(_getSkillAvatar(element.url, element.imageName));
    }
    if (!isVertical) {
      childrenList.add(HSpace(8));
    }

    if (isVertical) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: childrenList,
      );
    } else {
      return Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: childrenList,
      );
    }
  }

  _getSkillAvatar(String url, String imageName) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () async {
            launchUrl(url);
          },
          child: SkillAvatar(assetImageName: imageName)),
    );
  }
}

class _ContactData {
  String url;
  String imageName;

  _ContactData(this.url, this.imageName);
}

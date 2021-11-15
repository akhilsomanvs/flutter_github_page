import 'dart:math';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/app_utils/global_methods.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/views/components/skill_avatar.dart';

class FindMeAtWidget extends StatelessWidget {
  const FindMeAtWidget({Key? key}) : super(key: key);

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
          GestureDetector(
              onTap: () async {
                launchUrl("https://github.com/akhilsomanvs");
              },
              child: const SkillAvatar(assetImageName: "contact/contact_github.png")),
          VSpace(8),
          GestureDetector(
              onTap: () async {
                launchUrl("https://www.linkedin.com/in/akhil-soman-973769ab/");
              },
              child: const SkillAvatar(assetImageName: "contact/contact_linkedin.png")),
          VSpace(8),
          GestureDetector(
              onTap: () async {
                launchUrl("https://stackoverflow.com/users/5251407/akhil-soman");
              },
              child: const SkillAvatar(assetImageName: "contact/contact_stackoverflow.png")),
        ],
      ),
    );
  }
}

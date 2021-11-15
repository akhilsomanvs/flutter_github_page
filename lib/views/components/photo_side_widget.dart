import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/views/components/skill_avatar.dart';

class PhotoSideWidget extends StatelessWidget {
  const PhotoSideWidget({Key? key, required this.height}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ColoredBox(
        color: colorMainDark,
        child: Stack(
          children: [
            Image.asset("assets/images/my_photo.png"),
            Padding(
              padding: EdgeInsets.all(8.vdp()),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skills",
                      style: AppTheme.textTheme.bodyText1.copyWith(color: Colors.white),
                    ),
                    VSpace(8),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SkillAvatar(assetImageName: "skills/skill_flutter.png"),
                        HSpace(2),
                        SkillAvatar(assetImageName: "skills/skill_android.png"),
                        HSpace(2),
                        SkillAvatar(assetImageName: "skills/skill_kotlin.png"),
                        HSpace(2),
                        SkillAvatar(assetImageName: "skills/skill_git.png"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

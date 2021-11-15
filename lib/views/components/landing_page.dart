import 'dart:math';

import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/app_utils/global_methods.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/controllers/profile_screen_viewmodel.dart';
import 'package:github_page/views/components/my_details_widget.dart';
import 'package:github_page/views/components/photo_side_widget.dart';
import 'package:github_page/views/components/project_item.dart';
import 'package:github_page/views/components/skill_avatar.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatelessWidget {
  LandingPageMobile({Key? key, required this.viewModel}) : super(key: key);
  ProfileScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LandingPageDesktop extends StatelessWidget {
  LandingPageDesktop({Key? key, required this.viewModel}) : super(key: key);
  ProfileScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 3840 / 5760;
    double height = 600.vdp();
    double paddingValue = 60.vdp();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: aspectRatio,
                    child: MyDetailsWidget(height: height, paddingValue: paddingValue),
                  ),
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: aspectRatio,
                    child: PhotoSideWidget(height: height),
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Center(
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
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.hdp()),
          color: colorFooter,
          height: 100.vdp(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_downward_rounded, color: Colors.white),
              Text("PORTFOLIO", style: AppTheme.textTheme.headline3.copyWith(fontWeight: FontWeight.bold, color: colorGreyText)),
              const Icon(Icons.arrow_downward_rounded, color: Colors.white),
            ],
          ),
        ),
        ColoredBox(
          color: Colors.white,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: viewModel.projectList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.9,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              final project = viewModel.projectList[index];
              return ProjectItem(project: project);
            },
          ),
        ),
      ],
    );
  }
}

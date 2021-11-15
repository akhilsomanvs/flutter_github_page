
import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/controllers/profile_screen_viewmodel.dart';
import 'package:github_page/views/components/find_me_at_widget.dart';
import 'package:github_page/views/components/my_details_widget.dart';
import 'package:github_page/views/components/photo_side_widget.dart';
import 'package:github_page/views/components/project_item.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({Key? key, required this.viewModel}) : super(key: key);
  final ProfileScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LandingPageDesktop extends StatelessWidget {
  const LandingPageDesktop({Key? key, required this.viewModel}) : super(key: key);
  final ProfileScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 3840 / 5760; //aspect ratio of the photo I have used.
    double height = 600.vdp();
    double paddingValue = 60.vdp();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            ///Details about me
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
            ///Find Me At
            const Positioned.fill(
              child: FindMeAtWidget(),
            )
          ],
        ),
        ///Portfolio Banner
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
        ///Portfolio Section
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

import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/controllers/profile_screen_viewmodel.dart';
import 'package:github_page/views/components/find_me_at_widget.dart';
import 'package:github_page/views/components/my_details_widget.dart';
import 'package:github_page/views/components/photo_side_widget.dart';
import 'package:github_page/views/components/project_item.dart';

class LandingPageDesktop extends StatelessWidget {
  LandingPageDesktop({Key? key, required this.viewModel, required this.aspectRatio, required this.currentWidth}) : super(key: key);
  final double currentWidth;
  final ProfileScreenViewModel viewModel;
  final double aspectRatio;

  int gridChildCount = 3;

  @override
  Widget build(BuildContext context) {
    double height = 600.vdp();
    double paddingValue = 60.vdp();
    // debugPrint("$currentWidth");
    if (currentWidth < 1300) {
      gridChildCount = 2;
    } else {
      gridChildCount = 3;
    }
    return Column(
      children: [
        VSpace(30),
        Text(
          "This site is NOT responsive. SORRY!. I am working on it.",
          style: AppTheme.textTheme.bodyText1.copyWith(color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: paddingValue / 2,
            bottom: paddingValue,
            left: paddingValue,
            right: paddingValue,
          ),
          child: Column(
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
                  Positioned.fill(
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
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.vdp()),
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(bottom: 8.vdp()),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: viewModel.projectList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: gridChildCount,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}

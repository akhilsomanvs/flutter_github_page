import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/controllers/profile_screen_viewmodel.dart';
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
    double height = 800;
    double paddingValue = 60.vdp();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: MyDetailsWidget(height: height, paddingValue: paddingValue),
            ),
            Expanded(
              child: ColoredBox(
                color: colorMainDark,
                child: SizedBox(
                  height: height,
                  child: ColoredBox(
                    color: colorMainDark,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          color: colorFooter,
          height: 160,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("PORTFOLIO ", style: AppTheme.textTheme.headline3.copyWith(fontWeight: FontWeight.bold, color: colorGreyText)),
            ],
          ),
        ),
        GridView.builder(
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
            return Card(
              color: colorFooter,
              elevation: 10,
              shadowColor: colorMainDark,
              child: Padding(
                padding: EdgeInsets.all(16.vdp()),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          project.name,
                          style: AppTheme.textTheme.headline2.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    VSpace(16),
                    Text(
                      project.bulletPoints,
                      style: AppTheme.textTheme.bodyText1.copyWith(
                        color: colorGreyText,
                      ),
                      maxLines: 3,
                    ),
                    VSpace(16),
                    Expanded(child: Container()),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () async {
                          if (project.gitLink != null && project.gitLink!.isNotEmpty) {
                            String projectLink = project.gitLink!;
                            if (await canLaunch(projectLink)) {
                              await launch(projectLink);
                            }
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.vdp()),
                          child: Text(
                            "Read More >>",
                            style: AppTheme.textTheme.subtitle2.copyWith(
                              color: colorMainLight,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class MyDetailsWidget extends StatelessWidget {
  const MyDetailsWidget({Key? key, this.height = 800, this.isMobile = false, this.paddingValue = 60}) : super(key: key);
  final double paddingValue;
  final double height;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: colorMainLight,
      child: SizedBox(
        height: height,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("This design is from dribbble. ", style: AppTheme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.normal, color: Colors.white.withOpacity(1))),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () async {
                        String designUrl = "https://dribbble.com/shots/16367386-ALEX-Freelancer-Portfolio-Web-Design";
                        if (await canLaunch(designUrl)) {
                          await launch(designUrl);
                        }
                      },
                      child: Text("Click here to see.", style: AppTheme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.normal, color: Colors.white, decoration: TextDecoration.underline)),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(paddingValue),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                    children: [
                      Text("AKHIL", style: AppTheme.textTheme.headline4.copyWith(fontSize: 48.sp(), color: Colors.white, fontWeight: FontWeight.normal, height: 1)),
                      Text("SOMAN", style: AppTheme.textTheme.headline4.copyWith(fontSize: 48.sp(), color: Colors.white, height: 1)),
                      VSpace(48),
                      Text("//region ABOUT ME", style: AppTheme.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, color: colorGreyText)),
                      VSpace(32),
                      Text(
                        "I am mobile application developer with over 6 years of work experience. 5 Years in Android, 1.5 Years in Flutter.",
                        style: AppTheme.textTheme.bodyText2.copyWith(color: Colors.white),
                      ),
                      VSpace(32),
                      Text("//endregion ", style: AppTheme.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, color: colorGreyText)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

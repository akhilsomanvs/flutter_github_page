import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/controllers/profile_screen_viewmodel.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({Key? key, required this.viewModel, required this.aspectRatio}) : super(key: key);
  final ProfileScreenViewModel viewModel;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.vdp()),
      child: LayoutBuilder(
        builder: (context, constraint) {
          double height = constraint.maxWidth / aspectRatio;
          return SizedBox(
            width: double.infinity,
            height: height,
            child: ColoredBox(
              color: colorMainLight,
              child: Column(
                children: [
                  SizedBox(
                    height: 100.vdp(),
                    child: Row(
                      children: [
                        AspectRatio(
                          aspectRatio: aspectRatio,
                          child: Image.asset("assets/images/my_photo.png"),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("AKHIL", style: AppTheme.textTheme.bodyText1.copyWith(fontSize: 42.sp(), color: Colors.white, fontWeight: FontWeight.normal, height: 1)),
                              Text("SOMAN", style: AppTheme.textTheme.bodyText1.copyWith(fontSize: 48.sp(), color: Colors.white, height: 1)),
                              // Expanded(child: SizedBox()),
                              // Text("//region ABOUT ME", style: AppTheme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold, color: colorGreyText)),
                              // Expanded(child: SizedBox()),
                              Text(
                                "I am mobile application developer with over 6 years of work experience. 5 Years in Android, 1.5 Years in Flutter.",
                                style: AppTheme.textTheme.subtitle2.copyWith(color: Colors.white),
                              ),
                              // Expanded(child: SizedBox()),
                              // Text("//endregion ", style: AppTheme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold, color: colorGreyText)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

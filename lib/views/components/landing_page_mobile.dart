import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/controllers/profile_screen_viewmodel.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/views/components/find_me_at_widget.dart';

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
              child: Padding(
                padding: EdgeInsets.all(8.vdp()),
                child: Column(
                  children: [
                    VSpace(24),
                    Center(
                      child: Text(
                        "This site is NOT responsive. Please open this site on desktop browser.\nSORRY!.\nI am working on making this responsive.",
                        textAlign: TextAlign.center,
                        style: AppTheme.textTheme.subtitle1.copyWith(color: Colors.white),
                      ),
                    ),
                    VSpace(24),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.vdp(),horizontal: 16.hdp()),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: colorFooter, width: 2),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Meanwhile",
                            textAlign: TextAlign.center,
                            style: AppTheme.textTheme.subtitle2.copyWith(color: Colors.white),
                          ),
                          VSpace(16),
                          FindMeAtWidget(isVertical: false),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

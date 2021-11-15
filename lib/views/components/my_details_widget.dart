import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/app_utils/global_methods.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';

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
                        launchUrl(designUrl);
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
                      Expanded(child: SizedBox()),
                      Text("//region ABOUT ME", style: AppTheme.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, color: colorGreyText)),
                      Expanded(child: SizedBox()),
                      Text(
                        "I am mobile application developer with over 6 years of work experience. 5 Years in Android, 1.5 Years in Flutter."
                        "I am mobile application developer with over 6 years of work experience. 5 Years in Android, 1.5 Years in Flutter.",
                        style: AppTheme.textTheme.bodyText2.copyWith(color: Colors.white),
                      ),
                      Expanded(child: SizedBox()),
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

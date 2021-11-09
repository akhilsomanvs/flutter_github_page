import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/arch_utils/widgets/responsive_safe_area.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  double _screenWidth = 0;
  double _usableHeight = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ResponsiveSafeArea(
        builder: (BuildContext context, Size size) {
          _usableHeight = size.height;
          _screenWidth = size.width;
          double paddingValue = 60;
          return Container(
            height: _usableHeight,
            padding: EdgeInsets.all(paddingValue),
            decoration: BoxDecoration(
              color: colorPageBackground,
            ),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: _usableHeight - (2 * paddingValue),
                    child: ColoredBox(
                      color: colorMainLight,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
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
                                    child: Text("Click here to see.",
                                        style: AppTheme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.normal, color: Colors.white, decoration: TextDecoration.underline)),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("AKHIL", style: AppTheme.textTheme.headline4.copyWith(fontSize: 48.sp(), color: Colors.white, fontWeight: FontWeight.normal, height: 1)),
                                    Text("SOMAN", style: AppTheme.textTheme.headline4.copyWith(fontSize: 48.sp(), color: Colors.white, height: 1)),
                                    VSpace(48),
                                    Text("//region ABOUT ME", style: AppTheme.textTheme.bodyText1.copyWith(fontWeight: FontWeight.normal, color: Colors.white.withOpacity(0.6))),
                                    VSpace(32),
                                    Text(
                                      "I am mobile application developer with over 6 years of work experience. 5 Years in Android, 1.5 Years in Flutter.",
                                      style: AppTheme.textTheme.bodyText2.copyWith(color: Colors.white),
                                    ),
                                    VSpace(32),
                                    Text("//endregion ", style: AppTheme.textTheme.bodyText1.copyWith(fontWeight: FontWeight.normal, color: Colors.white.withOpacity(0.6))),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: _usableHeight - (2 * paddingValue),
                    child: ColoredBox(
                      color: colorMainDark,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

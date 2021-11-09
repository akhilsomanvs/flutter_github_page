import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/arch_utils/widgets/responsive_safe_area.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';

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
                        padding: EdgeInsets.all(paddingValue),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("AKHIL", style: AppTheme.textTheme.headline4.copyWith(fontSize: 48.sp(), color: Colors.white, fontWeight: FontWeight.normal)),
                            Text("SOMAN", style: AppTheme.textTheme.headline4.copyWith(fontSize: 48.sp(), color: Colors.white)),
                            VSpace(48),
                            Text("//region ABOUT ME", style: AppTheme.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.6))),
                            VSpace(32),
                            Text(
                              "I am mobile application developer with over 6 years of work experience. 5 Years in Android, 1.5 Years in Flutter.",
                              style: AppTheme.textTheme.bodyText2.copyWith(/*fontWeight:FontWeight.bold,*/ color: Colors.white),
                            ),
                            VSpace(32),
                            Text("//endregion ", style: AppTheme.textTheme.bodyText1.copyWith(color: Colors.white.withOpacity(0.6))),
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

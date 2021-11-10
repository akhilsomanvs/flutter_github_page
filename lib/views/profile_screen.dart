import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/arch_utils/widgets/responsive.dart';
import 'package:github_page/arch_utils/widgets/responsive_safe_area.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/views/components/landing_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  double _usableWidth = 0;
  double _usableHeight = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ResponsiveSafeArea(
        builder: (BuildContext context, Size size) {
          _usableHeight = size.height;
          _usableWidth = size.width;
          double paddingValue = 60;
          double heightAfterPadding = _usableHeight - (2 * paddingValue);
          debugPrint("WIDTH ::::: $_usableHeight __ $_usableWidth __ $heightAfterPadding");
          return Container(
            padding: EdgeInsets.all(paddingValue),
            decoration: BoxDecoration(
              color: colorPageBackground,
            ),
            child: Responsive(
              desktop: LandingPageDesktop(),
              mobile: LandingPageMobile(),
            ),
          );
        },
      ),
    );
  }
}

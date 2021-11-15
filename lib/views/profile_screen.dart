import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/arch_utils/widgets/responsive.dart';
import 'package:github_page/arch_utils/widgets/responsive_safe_area.dart';
import 'package:github_page/controllers/profile_screen_viewmodel.dart';
import 'package:github_page/views/components/landing_page.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  double _usableWidth = 0;
  double _usableHeight = 0;
  ProfileScreenViewModel viewModel = ProfileScreenViewModel();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: colorPageBackground,
      body: ResponsiveSafeArea(
        builder: (BuildContext context, Size size) {
          _usableHeight = size.height;
          _usableWidth = size.width;
          double paddingValue = 60;
          debugPrint("WIDTH ::::: $_usableHeight __ $_usableWidth");

          double containerWidth = 1250;
          if (_usableWidth < containerWidth) {
            containerWidth = _usableWidth;
          }
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(paddingValue),
              child: Center(
                child: SizedBox(
                  width: containerWidth,
                  child: Responsive(
                    desktop: LandingPageDesktop(viewModel: viewModel),
                    mobile: LandingPageDesktop(viewModel: viewModel),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

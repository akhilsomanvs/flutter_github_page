import 'package:flutter/material.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';
import 'package:github_page/arch_utils/widgets/responsive_safe_area.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  double _usableHeight = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ResponsiveSafeArea(
        builder: (BuildContext context, Size size) {
          _usableHeight = size.height;
          return SizedBox(
            height: _usableHeight,
            child: Column(
              children: [
                Container(
                  color: Colors.deepPurple,
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("$_usableHeight"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

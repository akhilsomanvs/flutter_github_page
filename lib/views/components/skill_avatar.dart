import 'package:flutter/material.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';

class SkillAvatar extends StatelessWidget {
  const SkillAvatar({Key? key, required this.assetImageName}) : super(key: key);
  final String assetImageName;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 16.vdp(),
      child: Padding(
        padding: EdgeInsets.all(6.vdp()),
        child: Image.asset("assets/images/$assetImageName"),
      ),
    );
  }
}
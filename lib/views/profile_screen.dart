import 'package:flutter/material.dart';
import 'package:github_page/utils/commonUtils/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

      body: Column(
        children: [
          Container(
            color: Colors.deepPurple,
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text("Welcome"),
          ),
        ],
      ),
    );
  }
}

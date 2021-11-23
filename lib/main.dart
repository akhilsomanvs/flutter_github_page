import 'package:flutter/material.dart';
import 'package:github_page/views/profile_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akhil Soman - Github',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350,name: MOBILE),
          ResponsiveBreakpoint.autoScale(600,name: TABLET),
          ResponsiveBreakpoint.resize(800,name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700,name: 'XL'),
        ]
      ),
      home: ProfileScreen(),
    );
  }
}
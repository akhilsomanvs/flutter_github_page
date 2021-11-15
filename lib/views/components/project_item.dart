import 'package:flutter/material.dart';
import 'package:github_page/app_utils/app_colours.dart';
import 'package:github_page/app_utils/app_theme.dart';
import 'package:github_page/app_utils/global_methods.dart';
import 'package:github_page/arch_utils/widgets/spacing_widgets.dart';
import 'package:github_page/models/project.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:github_page/arch_utils/utils/size_config.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({Key? key, required this.project}) : super(key: key);
  final ProjectData project;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorFooter,
      elevation: 10,
      shadowColor: colorMainDark,
      child: Padding(
        padding: EdgeInsets.all(16.vdp()),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  project.name,
                  style: AppTheme.textTheme.headline2.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            VSpace(16),
            Text(
              project.bulletPoints,
              style: AppTheme.textTheme.bodyText1.copyWith(
                color: colorGreyText,
              ),
              maxLines: 3,
            ),
            VSpace(16),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () async {
                  if (project.gitLink != null && project.gitLink!.isNotEmpty) {
                    String projectLink = project.gitLink!;
                    launchUrl(projectLink);
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.vdp()),
                  child: Text(
                    "Read More >>",
                    style: AppTheme.textTheme.subtitle2.copyWith(
                      color: colorMainLight,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

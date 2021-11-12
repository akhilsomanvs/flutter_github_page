import 'package:github_page/models/project.dart';

class ProfileScreenViewModel {
  final List<ProjectData> _projectList = [
    ...List.generate(
      10,
      (index) => ProjectData(
        name: "Reflectly UI clone",
        description: "A simple 3 screen UI sample based on the Reflectly application.",
        gitLink: "https://github.com/akhilsomanvs/flutter_reflectly_clone",
        imageAsset: "projects/ref_clone_3.gif",
        featuresList: [
          "Animating shapes",
          "Text animations",
          "Changing themes",
        ],
      ),
    ),
  ];

  List<ProjectData> get projectList => List.unmodifiable(_projectList);
}

import 'package:github_page/models/project.dart';

class ProfileScreenViewModel {
  final List<ProjectData> _projectList = [
    ProjectData(
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
    ProjectData(
      name: "Music Player UI",
      description: "A UI design implementation based on the design from dribbble.",
      gitLink: "https://github.com/akhilsomanvs/music_player",
      imageAsset: "projects/music_player.gif",
      featuresList: [
        "Animating position",
        "Rotation animations",
      ],
    ),
    ProjectData(
      name: "Light Cone Bottom App Bar",
      description: "A simple UI for a bottom navigation bar.",
      gitLink: "https://github.com/akhilsomanvs/flutter_LightConeBottomBarUI",
      imageAsset: "projects/lightcone_bottom_navbar.gif",
      featuresList: [
        "Custom Drawing",
        "Custom Painter",
        "Tap Detection",
      ],
    ),
    ProjectData(
      name: "Mirrored Loading",
      description: "Showing a loading UI with a reflection effect.",
      gitLink: "https://github.com/akhilsomanvs/flutter_mirrored_loading_ui",
      imageAsset: "projects/mirrored_loading.gif",
      featuresList: [
        "Animating shapes",
        "Custom Drawing",
        "Custom Painter",
      ],
    ),
    /*...List.generate(
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
    ),*/
  ];

  List<ProjectData> get projectList => List.unmodifiable(_projectList);
}

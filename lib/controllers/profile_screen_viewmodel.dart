import 'package:github_page/models/project.dart';

class ProfileScreenViewModel {
  final List<ProjectData> _projectList = [
    ProjectData(
      name: "Reflectly UI clone",
      description:
          "A simple 3 screen UI sample based on the Reflectly application.",
      gitLink: "https://github.com/akhilsomanvs/flutter_reflectly_clone",
      imageAsset: "projects_gifs/ref_clone_3.gif",
      featuresList: [
        "Animating shapes",
        "Text animations",
        "Changing themes",
      ],
    ),
    ProjectData(
      name: "Music Player UI",
      description:
          "A UI design implementation based on the design from dribbble.",
      gitLink: "https://github.com/akhilsomanvs/music_player",
      imageAsset: "projects_gifs/music_player.gif",
      featuresList: [
        "Animating position",
        "Rotation animations",
      ],
    ),
    ProjectData(
      name: "Light Cone Bottom App Bar",
      description: "A simple UI for a bottom navigation bar.",
      gitLink: "https://github.com/akhilsomanvs/flutter_LightConeBottomBarUI",
      imageAsset: "projects_gifs/lightcone_bottom_navbar.gif",
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
      imageAsset: "projects_gifs/mirrored_loading.gif",
      featuresList: [
        "Animating shapes",
        "Custom Drawing",
        "Custom Painter",
      ],
    ),
    ProjectData(
      name: "Flutter Web Portfolio",
      description:
          "A portfolio website built using Flutter. The website is not responsive at the moment.",
      gitLink: "https://github.com/akhilsomanvs/flutter_github_page",
      imageAsset: "projects_gifs/mirrored_loading.gif",
      featuresList: [
        "Flutter web",
        "Non-responsive(At the moment)",
      ],
    ),
    /*...List.generate(
      10,
      (index) => ProjectData(
        name: "Reflectly UI clone",
        description: "A simple 3 screen UI sample based on the Reflectly application.",
        gitLink: "https://github.com/akhilsomanvs/flutter_reflectly_clone",
        imageAsset: "projects_gifs/ref_clone_3.gif",
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

class ProjectData {
  String name;
  String? gitLink;
  String? liveLink;
  String description;
  List<String>? featuresList;
  String? imageAsset;

  ProjectData({
    required this.name,
    this.gitLink,
    this.liveLink,
    required this.description,
    this.featuresList,
    this.imageAsset,
  });
}

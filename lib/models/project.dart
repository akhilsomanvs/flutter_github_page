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

  String get bulletPoints {
    String bulletString = "";
    if (featuresList != null) {
      for (int i = 0; i < featuresList!.length; i++) {
        bulletString += "- ${featuresList![i]}";
        if(i!=featuresList!.length-1){
          bulletString += "\n";
        }
      }
    }
    return bulletString;
  }
}

enum ProjectType {
  mobile,
}

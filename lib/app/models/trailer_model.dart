class TrailerModel {
  final String urlVideo;

  TrailerModel({required this.urlVideo});

  factory TrailerModel.fromJson(Map<String, dynamic> json) {
    return TrailerModel(
      urlVideo: json['linkEmbed'],
    );
  }
}

class ShortImageModel {
  String image;
  ShortImageModel({
    required this.image,
  });

  factory ShortImageModel.fromJson(Map<String, dynamic> json) {
    return ShortImageModel(
      image: json['image'],
    );
  }
}

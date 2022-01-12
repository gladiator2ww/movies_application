class MovieModelComingSoon {
  final String id;
  final String title;
  final String image;
  final String runtimeStr;
  final String releaseState;

  MovieModelComingSoon({
    required this.id,
    required this.title,
    required this.image,
    required this.runtimeStr,
    required this.releaseState,
  });

  factory MovieModelComingSoon.fromJson(Map<String, dynamic> json) {
    return MovieModelComingSoon(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      runtimeStr: json['runtimeStr'],
      releaseState: json['releaseState'],
    );
  }
}

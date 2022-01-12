class MovieModel {
  final String id;
  final String title;
  final String image;
  final String imDbRating;
  final String year;

  MovieModel({
    required this.id,
    required this.title,
    required this.image,
    required this.imDbRating,
    required this.year,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      imDbRating: json['imDbRating'],
      year: json['year'],
    );
  }
}

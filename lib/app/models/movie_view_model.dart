class MovieViewModel {
  final String id;
  final String title;
  final String image;
  final String imDbRating;
  final String year;
  final String plot;
  final String genres;
  final String directors;

  final String countries;

  MovieViewModel({
    required this.id,
    required this.title,
    required this.image,
    required this.imDbRating,
    required this.year,
    required this.plot,
    required this.genres,
    required this.directors,
    required this.countries,
  });

  factory MovieViewModel.fromJson(Map<String, dynamic> json) {
    return MovieViewModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      imDbRating: json['imDbRating'],
      year: json['year'],
      plot: json['plot'],
      genres: json['genres'],
      directors: json['directors'],
      countries: json['countries'],
    );
  }
}

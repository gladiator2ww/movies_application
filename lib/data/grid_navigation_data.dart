enum MoviesCategory {
  popularMovies,
  popularTvs,
  top250Movies,
}

class GridNavigationData {
  final String name;
  final MoviesCategory titleCategory;

  GridNavigationData({
    required this.name,
    required this.titleCategory,
  });
}

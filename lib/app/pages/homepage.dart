import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/movie_model_home_bloc.dart';
import 'package:movies_application/app/models/grid_navigation_data.dart';
import 'package:movies_application/app/widgets/bottom_bar.dart';
import 'package:movies_application/app/widgets/coming_soon_movies.dart';
import 'package:movies_application/app/widgets/movies_section.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/generated/l10n.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MoviesRepository _moviesRepository = MoviesRepository();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = MovieModelBloc(_moviesRepository);
    return BlocProvider<MovieModelBloc>(
      create: (context) => bloc,
      child: BlocBuilder<MovieModelBloc, MovieModelState>(
        builder: (context, state) {
          if (state is MovieModelLoadingState) {
            return Center(child: MyCircularProgressIndicator());
          }
          if (state is MovieModelLoadedState) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        S.of(context).coming_soon,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      CarouselSlider.builder(
                          itemCount: state.comingSoonMovies.length,
                          options: CarouselOptions(
                            height: 430,
                            viewportFraction: 0.7,
                            enableInfiniteScroll: true,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 55),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            scrollDirection: Axis.horizontal,
                          ),
                          itemBuilder:
                              (context, int index, int pageViewIndex) =>
                                  ComingSoonMovies(
                                    itemImage:
                                        '${state.comingSoonMovies[index].image}',
                                    itemTitle:
                                        '${state.comingSoonMovies[index].title}',
                                    itemRuntimeStr:
                                        '${state.comingSoonMovies[index].runtimeStr}',
                                    itemRealiseState:
                                        '${state.comingSoonMovies[index].releaseState}',
                                  )),
                      MoviesSection(
                          typeState: state.popularMovies,
                          name: S.of(context).most_popular_movies,
                          onTapSeeAll: () {
                            bloc.add(
                              OnTapSeeAllEvent(
                                gridNavigationDataEvent: GridNavigationData(
                                  titleCategory: MoviesCategory.popularMovies,
                                  name: S.of(context).most_popular_movies,
                                ),
                              ),
                            );
                          },
                          onTapMovieView: (movieId) {
                            bloc.add(
                              OnTapMovieViewEvent(movieIdEvent: movieId),
                            );
                          }),
                      MoviesSection(
                          typeState: state.popularTvs,
                          name: S.of(context).most_popular_tvs,
                          onTapSeeAll: () {
                            bloc.add(
                              OnTapSeeAllEvent(
                                gridNavigationDataEvent: GridNavigationData(
                                  titleCategory: MoviesCategory.popularTvs,
                                  name: S.of(context).most_popular_tvs,
                                ),
                              ),
                            );
                          },
                          onTapMovieView: (movieId) {
                            bloc.add(
                              OnTapMovieViewEvent(movieIdEvent: movieId),
                            );
                          }),
                      MoviesSection(
                        typeState: state.top250Movies,
                        name: S.of(context).top_movies250,
                        onTapSeeAll: () {
                          bloc.add(
                            OnTapSeeAllEvent(
                              gridNavigationDataEvent: GridNavigationData(
                                titleCategory: MoviesCategory.top250Movies,
                                name: S.of(context).top_movies250,
                              ),
                            ),
                          );
                        },
                        onTapMovieView: (movieId) {
                            bloc.add(
                              OnTapMovieViewEvent(movieIdEvent: movieId),
                            );
                          }),
                      
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: BottomBar(),
            );
          }
          if (state is MovieModelEmptyState) {
            return Center(child: Text('No films'));
          }
          return Text('Exeption');
        },
      ),
      // ),
    );
  }
}

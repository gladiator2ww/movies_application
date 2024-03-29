import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/movie_model_home_bloc.dart';
import 'package:movies_application/app/bloc/saved_bloc_mediator.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/grid_navigation_data.dart';
import 'package:movies_application/app/widgets/coming_soon_movies.dart';
import 'package:movies_application/app/widgets/movies_section.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/saved_movies_provider.dart';
import 'package:movies_application/generated/l10n.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieModelBloc>(
      create: (context) => MovieModelBloc(getIt.get<MoviesRepository>(),
          getIt.get<SavedMoviesProvider>(), getIt.get<SavedBlocMediator>()),
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
                          height: 450,
                          viewportFraction: 0.8,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 55),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: false,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemBuilder: (context, int index, int pageViewIndex) =>
                            ComingSoonMovies(
                          itemImage: state.comingSoonMovies[index].image,
                          itemTitle: state.comingSoonMovies[index].title,
                          itemRuntimeStr:
                              state.comingSoonMovies[index].runtimeStr,
                          itemRealiseState:
                              state.comingSoonMovies[index].releaseState,
                        ),
                      ),
                      MoviesSection(
                        typeState: state.popularMovies,
                        name: S.of(context).most_popular_movies,
                        onTapSeeAll: () {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapSeeAllEvent(
                              gridNavigationDataEvent: GridNavigationData(
                                titleCategory: MoviesCategory.popularMovies,
                                name: S.of(context).most_popular_movies,
                              ),
                            ),
                          );
                        },
                        onTapMovieDetails: (movieId) {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapMovieDetailsEvent(movieIdEvent: movieId),
                          );
                        },
                        onTapAddSavedIcon: (movieId) => {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapSavedEvent(
                              movieId: movieId,
                              moviesCategory: MoviesCategory.popularMovies,
                            ),
                          ),
                        },
                      ),
                      MoviesSection(
                        typeState: state.popularTvs,
                        name: S.of(context).most_popular_tvs,
                        onTapSeeAll: () {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapSeeAllEvent(
                              gridNavigationDataEvent: GridNavigationData(
                                titleCategory: MoviesCategory.popularTvs,
                                name: S.of(context).most_popular_tvs,
                              ),
                            ),
                          );
                        },
                        onTapMovieDetails: (movieId) {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapMovieDetailsEvent(movieIdEvent: movieId),
                          );
                        },
                        onTapAddSavedIcon: (movieId) => {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapSavedEvent(
                              movieId: movieId,
                              moviesCategory: MoviesCategory.popularTvs,
                            ),
                          ),
                        },
                      ),
                      MoviesSection(
                        typeState: state.top250Movies,
                        name: S.of(context).top_movies250,
                        onTapSeeAll: () {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapSeeAllEvent(
                              gridNavigationDataEvent: GridNavigationData(
                                titleCategory: MoviesCategory.top250Movies,
                                name: S.of(context).top_movies250,
                              ),
                            ),
                          );
                        },
                        onTapMovieDetails: (movieId) {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapMovieDetailsEvent(movieIdEvent: movieId),
                          );
                        },
                        onTapAddSavedIcon: (movieId) => {
                          BlocProvider.of<MovieModelBloc>(context).add(
                            OnTapSavedEvent(
                              movieId: movieId,
                              moviesCategory: MoviesCategory.top250Movies,
                            ),
                          ),
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          if (state is MovieModelEmptyState) {
            return Center(child: Text(S.of(context).not_found));
          }
          return SizedBox();
        },
      ),
    );
  }
}

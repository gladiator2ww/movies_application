import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/movie_details_bloc.dart';
import 'package:movies_application/app/bloc/saved_bloc_mediator.dart';
import 'package:movies_application/app/models/saved_item_model/saved_item_model.dart';
import 'package:movies_application/app/widgets/buttons/watch_trailer_button.dart';
import 'package:movies_application/app/widgets/movie_details/actor_section.dart';
import 'package:movies_application/app/widgets/movie_details/genre_item.dart';
import 'package:movies_application/app/widgets/movie_details/movie_details_info.dart';
import 'package:movies_application/app/widgets/movie_details/movie_details_title.dart';
import 'package:movies_application/app/widgets/movie_details/movie_screen_image.dart';
import 'package:movies_application/app/widgets/movie_details/movie_rank_details.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/app/widgets/movie_details/similars_movies_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/saved_movies_provider.dart';
import 'package:movies_application/generated/l10n.dart';
import 'package:movies_application/data/movies_repository.dart';

class MovieDetails extends StatefulWidget {
  final String movieId;

  const MovieDetails({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieDetailsBloc>(
      create: (context) => MovieDetailsBloc(
          getIt.get<MoviesRepository>(), getIt.get<SavedBlocMediator>())
        ..add(
          MovieDetailsInitializeEvent(movieId: widget.movieId),
        ),
      child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
        builder: (context, state) {
          if (state is MovieDetailsLoadingState) {
            return Center(child: MyCircularProgressIndicator());
          }
          if (state is MovieDetailsLoadedState) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  state.movie.title,
                  style: Theme.of(context).appBarTheme.toolbarTextStyle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieDetailsTitle(
                        title: state.movie.title,
                        year: state.movie.year ?? '',
                        runtimeStr: state.movie.runtimeStr ?? '',
                      ),
                      Stack(
                        children: [
                          CarouselSlider.builder(
                            itemCount: 10,
                            options: CarouselOptions(
                              height: 250,
                              viewportFraction: 1.0,
                              enableInfiniteScroll: true,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 7),
                              autoPlayCurve: Curves.elasticInOut,
                              enlargeCenterPage: false,
                              scrollDirection: Axis.horizontal,
                            ),
                            itemBuilder:
                                (context, int index, int pageViewIndex) =>
                                    MovieScreenImage(
                              width: double.infinity,
                              height: 250,
                              imageUrl: state.imagesList[index].image
                                  .replaceRange(28, 36, '180x280'),
                            ),
                          ),
                          Positioned(
                            child: WatchTrailerButton(
                              onTap: (() {
                                BlocProvider.of<MovieDetailsBloc>(context).add(
                                  OnTapMovieTrailerEvent(
                                      movieIdEvent: state.movie.id),
                                );
                              }),
                            ),
                            bottom: 5,
                            right: 5,
                          ),
                        ],
                      ),
                      MovieDetailsInfo(
                          urlMovieImage: state.movie.image,
                          plot: state.movie.plot,
                          countries: state.movie.countries,
                          directors: state.movie.directors,
                          onTapReadDescription: (String) {
                            BlocProvider.of<MovieDetailsBloc>(context).add(
                                OnTapMovieTrailerEvent(
                                    movieIdEvent: state.movie.id));
                          }),
                      Container(
                        height: 70,
                        alignment: Alignment.center,
                        child: Flexible(
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: state.movie.genreList.length,
                              itemBuilder: (context, index) {
                                final item = state.movie.genreList[index];
                                return GenreItem(
                                  genre: item.value,
                                );
                              }),
                        ),
                      ),
                      MovieRankDetails(
                        rating: state.movie.imDbRating ?? '',
                        voteRating: state.movie.imDbRatingVotes ?? '',
                        onTapAddSaved: () {
                          BlocProvider.of<MovieDetailsBloc>(context).add(
                            OnTapSavedEvent(),
                          );
                        }, 
                        isFavorite: state.isFavorite,
                      ),
                      ActorSection(
                        typeState: state.movie.actorList,
                        onTapActorDetails: (actorId) {
                          BlocProvider.of<MovieDetailsBloc>(context).add(
                            OnTapActorDetailsEvent(actorIdEvent: actorId),
                          );
                        },
                      ),
                      SimilarsMoviesSection(
                        typeState: state.movie.similars,
                        onTapMovieDetailsEvent: (movieId) {
                          BlocProvider.of<MovieDetailsBloc>(context).add(
                            OnTapMovieDetailsEvent(movieIdEvent: movieId),
                          );
                        },
                      )
                    ]),
              ),
            );
          }
          if (state is MovieDetailsEmptyState) {
            return Center(child: Text(S.of(context).not_found));
          }
          return SizedBox();
        },
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/movie_details_bloc.dart';
import 'package:movies_application/app/widgets/movie_details/actor_section.dart';
import 'package:movies_application/app/widgets/movie_details/genre_item.dart';
import 'package:movies_application/app/widgets/movie_details/movie_details_info.dart';
import 'package:movies_application/app/widgets/movie_details/movie_details_title.dart';
import 'package:movies_application/app/widgets/movie_details/movie_screen_image.dart';
import 'package:movies_application/app/widgets/movie_details/movie_rank_details.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/app/widgets/movie_details/similars_movies_section.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  final MoviesRepository _moviesRepository = MoviesRepository();
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = MovieDetailsBloc(_moviesRepository)
      ..add(MovieDetailsInitializeEvent(movieId: widget.movieId));
    return BlocProvider<MovieDetailsBloc>(
      create: (context) => bloc,
      child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
        builder: (context, state) {
          if (state is MovieDetailsLoadingState) {
            return Center(child: MyCircularProgressIndicator());
          }
          if (state is MovieDetailsLoadedState) {
            return Scaffold(
              appBar: AppBar(
                title: Row(children: [
                  Text(
                    state.movie.title,
                    style: Theme.of(context).appBarTheme.toolbarTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ]),
              ),
              body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieDetailsTitle(
                        title: state.movie.title,
                        year: state.movie.year,
                        runtimeStr: state.movie.runtimeStr,
                      ),
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
                        itemBuilder: (context, int index, int pageViewIndex) =>
                            MovieScreenImage(
                          width: double.infinity,
                          height: 250,
                          imageUrl: state.imagesList[index].image,
                        ),
                      ),
                      MovieDetailsInfo(
                          urlMovieImage: state.movie.image,
                          imDbRating: state.movie.imDbRating,
                          plot: state.movie.plot,
                          countries: state.movie.countries,
                          directors: state.movie.directors,
                          onTap: (plot) {
                            setState(() {});
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 70,
                            child: Expanded(
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
                        ],
                      ),
                      MovieRankDetails(
                        rating: state.movie.imDbRating,
                        voteRating: state.movie.imDbRatingVotes,
                        onTapAddSaved: () {},
                      ),
                      ActorSection(
                        typeState: state.movie.actorList,
                        onTapActorDetails: (movieId) {
                          bloc.add(
                            OnTapActorDetailsEvent(movieIdEvent: movieId),
                          );
                        },
                      ),
                      SimilarsMoviesSection(
                        typeState: state.movie.similars,
                        onTapMovieDetailsEvent: (movieId) {
                          bloc.add(
                            OnTapMovieDetailsEvent(movieIdEvent: movieId),
                          );
                        },
                      )
                    ]),
              ),
            );
          }
          if (state is MovieDetailsEmptyState) {
            return Center(child: Text('No films'));
          }
          return Text('Exeption');
        },
      ),
      // ),
    );
  }
}

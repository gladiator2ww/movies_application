import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/movie_details_bloc.dart';
import 'package:movies_application/app/widgets/actor_section.dart';
import 'package:movies_application/app/widgets/bottom_bar.dart';
import 'package:movies_application/app/widgets/movie_detail_info.dart';
import 'package:movies_application/app/widgets/movie_details_title.dart';
import 'package:movies_application/app/widgets/movie_details_screen.dart';
import 'package:movies_application/app/widgets/movie_rank_details.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/app/widgets/similars_movies_section.dart';
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
                          runtimeStr: state.movie.runtimeStr),
                      CarouselSlider.builder(
                        itemCount: state.imagesList.length,
                        options: CarouselOptions(
                          height: 250,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayCurve: Curves.elasticInOut,
                          enlargeCenterPage: false,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemBuilder: (context, int index, int pageViewIndex) =>
                            MovieDetailsScreen(
                          width: double.infinity,
                          height: 250,
                          imageUrl: state.imagesList[index].image,
                        ),
                      ),
                      MovieDetailInfo(
                          urlMovieImage: state.movie.image,
                          imDbRating: state.movie.imDbRating,
                          plot: state.movie.plot,
                          countries: state.movie.countries,
                          directors: state.movie.directors,
                          genres: state.movie.genres,
                          onTap: (plot) {
                            setState(() {});
                          }),
                      MovieRankDetails(
                        rating: state.movie.imDbRating,
                        voteRating: state.movie.imDbRatingVotes,
                        onTapAddSaved: () {},
                      ),
                      ActorSection(
                        typeState: state.actor,
                        onTapActorDetails: (movieId) {
                          bloc.add(
                            OnTapActorDetailsEvent(movieIdEvent: movieId),
                          );
                        },
                      ),
                      SimilarsMoviesSection(
                        typeState: state.similarMovie,
                        onTapMovieDetailsEvent: (movieId) {
                          bloc.add(
                            OnTapMovieDetailsEvent(movieIdEvent: movieId),
                          );
                        },
                      )
                    ]),
              ),
              bottomNavigationBar: BottomBar(),
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

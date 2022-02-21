import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/actor_details_bloc.dart';
import 'package:movies_application/app/widgets/actor_details/actor_details_info.dart';
import 'package:movies_application/app/widgets/actor_details/actor_filmography_section.dart';
import 'package:movies_application/app/widgets/movie_details/movie_screen_image.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ActorDetails extends StatefulWidget {
  final String movieId;

  const ActorDetails({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  _ActorDetailsState createState() => _ActorDetailsState();
}

class _ActorDetailsState extends State<ActorDetails> {
  final MoviesRepository _moviesRepository = MoviesRepository();
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = ActorDetailsBloc(_moviesRepository)
      ..add(ActorDetailsInitializeEvent(movieId: widget.movieId));
    return BlocProvider<ActorDetailsBloc>(
      create: (context) => bloc,
      child: BlocBuilder<ActorDetailsBloc, ActorDetailsState>(
        builder: (context, state) {
          if (state is ActorDetailsLoadingState) {
            return Center(child: MyCircularProgressIndicator());
          }
          if (state is ActorDetailsLoadedState) {
            return Scaffold(
              appBar: AppBar(
                title: Row(children: [
                  Text(
                    state.actor.name,
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
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.actor.name,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 10),
                            Text(
                              state.actor.role,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                      CarouselSlider.builder(
                        itemCount: state.actorImages.length,
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
                            MovieScreenImage(
                          width: double.infinity,
                          height: 250,
                          imageUrl: state.actorImages[index].image,
                        ),
                      ),
                      ActorDetailsInfo(
                        urlMovieImage: state.actor.image,
                        birthDate: state.actor.birthDate,
                        height: state.actor.height,
                        summary: state.actor.summary,
                        awards: state.actor.awards,
                      ),
                      ActorFilmographySection(
                        typeState: state.actor.actorMovies,
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
          if (state is ActorDetailsEmptyState) {
            return Center(child: Text('No films'));
          }
          return Text('Exeption');
        },
      ),
      // ),
    );
  }
}

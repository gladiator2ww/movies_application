import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/actor_details_bloc.dart';
import 'package:movies_application/app/widgets/actor_detail_info.dart';
import 'package:movies_application/app/widgets/actor_movies_section.dart';
import 'package:movies_application/app/widgets/bottom_bar.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                      ActorDetailInfo(
                        urlMovieImage: state.actor.image,
                        birthDate: state.actor.birthDate,
                        height: state.actor.height,
                        summary: state.actor.summary,
                        awards: state.actor.awards,
                      ),
                      ActorMoviesSection(
                        typeState: state.actorMovies,
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

import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/actor_details_bloc.dart';
import 'package:movies_application/app/widgets/actor_details/actor_details_info.dart';
import 'package:movies_application/app/widgets/actor_details/actor_filmography_section.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/generated/l10n.dart';

class ActorDetails extends StatefulWidget {
  final String actorId;

  const ActorDetails({
    Key? key,
    required this.actorId,
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
    return BlocProvider<ActorDetailsBloc>(
      create: (context) => ActorDetailsBloc(_moviesRepository)
        ..add(ActorDetailsInitializeEvent(actorId: widget.actorId)),
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
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
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
                      typeState: state.actor.knownFor,
                      onTapMovieDetailsEvent: (movieId) {
                        BlocProvider.of<ActorDetailsBloc>(context).add(
                          OnTapMovieDetailsEvent(movieIdEvent: movieId),
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          }
          if (state is ActorDetailsEmptyState) {
            return Center(child: Text(S.of(context).not_found));
          }
          return SizedBox();
        },
      ),
      // ),
    );
  }
}

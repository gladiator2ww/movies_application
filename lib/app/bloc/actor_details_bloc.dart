import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/models/actor_movies_model.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/navigation_service.dart';
import 'package:movies_application/app/models/actor_details_model.dart';

class ActorDetailsBloc extends Bloc<ActorDetailsEvent, ActorDetailsState> {
  final MoviesRepository _moviesRepository;

  ActorDetailsBloc(
    this._moviesRepository,
  ) : super(ActorDetailsEmptyState());

  late ActorDetailsModel _actor;

  var _actorMovies = <ActorMoviesModel>[];

  @override
  Stream<ActorDetailsState> mapEventToState(ActorDetailsEvent event) async* {
    if (event is ActorDetailsInitializeEvent) {
      yield ActorDetailsLoadingState();

      try {
        _actor = await _moviesRepository.getActorDetails(event.movieId);
        _actorMovies = await _moviesRepository.getActorMovies(event.movieId);

        yield ActorDetailsLoadedState(
          actor: _actor,
          actorMovies: _actorMovies,
        );
      } catch (_) {
        yield ActorDetailsEmptyState();
      }
    } else if (event is OnTapMovieDetailsEvent) {
      navigationService.navigateTo(
          page: Pages.movieDetails, arguments: event.movieIdEvent);
    }
  }
}

abstract class ActorDetailsEvent {}

class ActorDetailsInitializeEvent extends ActorDetailsEvent {
  final String movieId;
  ActorDetailsInitializeEvent({
    required this.movieId,
  });
}

class OnTapMovieDetailsEvent extends ActorDetailsEvent {
  final String movieIdEvent;
  OnTapMovieDetailsEvent({
    required this.movieIdEvent,
  });
}

abstract class ActorDetailsState {}

class ActorDetailsLoadingState extends ActorDetailsState {}

class ActorDetailsLoadedState extends ActorDetailsState {
  ActorDetailsModel actor;
  List<ActorMoviesModel> actorMovies;

  ActorDetailsLoadedState({
    required this.actor,
    required this.actorMovies,
  });
}

class ActorDetailsEmptyState extends ActorDetailsState {}

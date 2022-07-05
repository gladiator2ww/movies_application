import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/navigation_service.dart';
import 'package:movies_application/app/models/actor_details_model/actor_details_model.dart';

class ActorDetailsBloc extends Bloc<ActorDetailsEvent, ActorDetailsState> {
  final MoviesRepository _moviesRepository;

  ActorDetailsBloc(
    this._moviesRepository,
  ) : super(ActorDetailsEmptyState());

  late ActorDetailsModel _actor;

  @override
  Stream<ActorDetailsState> mapEventToState(ActorDetailsEvent event) async* {
    if (event is ActorDetailsInitializeEvent) {
      yield ActorDetailsLoadingState();

      try {
        _actor = await _moviesRepository.getActorDetails(event.actorId);

        yield ActorDetailsLoadedState(
          actor: _actor,
        );
      } catch (_) {
        yield ActorDetailsEmptyState();
      }
    } else if (event is OnTapMovieDetailsEvent) {
      navigationService.navigateTo(
          page: Page.movieDetails, arguments: event.movieIdEvent);
    }
  }
}

abstract class ActorDetailsEvent {}

class ActorDetailsInitializeEvent extends ActorDetailsEvent {
  String actorId;

  ActorDetailsInitializeEvent({
    required this.actorId,
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

  ActorDetailsLoadedState({
    required this.actor,
  });
}

class ActorDetailsEmptyState extends ActorDetailsState {}

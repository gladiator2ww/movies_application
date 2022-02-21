import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/models/short_image/short_image.dart';
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
  var _actorImages = <ShortImageModel>[];

  @override
  Stream<ActorDetailsState> mapEventToState(ActorDetailsEvent event) async* {
    if (event is ActorDetailsInitializeEvent) {
      yield ActorDetailsLoadingState();

      try {
        _actorImages = await _moviesRepository.getShortImage(event.movieId);
        _actor = await _moviesRepository.getActorDetails(event.movieId);

        yield ActorDetailsLoadedState(
          actor: _actor,
          actorImages: _actorImages,
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
  List<ShortImageModel> actorImages;

  ActorDetailsLoadedState({
    required this.actor,
    required this.actorImages,
  });
}

class ActorDetailsEmptyState extends ActorDetailsState {}

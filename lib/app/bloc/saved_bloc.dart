import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/bloc/saved_bloc_mediator.dart';
import 'package:movies_application/app/models/saved_item_model/saved_item_model.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/navigation_service.dart';
import 'package:movies_application/data/saved_movies_provider.dart';

class SavedBloc extends Bloc<SavedEvent, SavedState> {
  final SavedMoviesProvider _savedMoviesProvider;
  final SavedBlocMediator _savedBlocMediator;

  SavedBloc(
    this._savedMoviesProvider,
    this._savedBlocMediator,
  ) : super(SavedEmptyState()) {
    add(SavedInitializeEvent());
    _savedBlocMediator.itemAddedStream.listen((event) {
      add(SavedInitializeEvent());
    });
  }
  var _savedItems = <SavedItemModel>[];

  @override
  Stream<SavedState> mapEventToState(SavedEvent event) async* {
    if (event is SavedInitializeEvent) {
      yield SavedLoadingState();
    }
    try {
      _savedItems = await _savedMoviesProvider.getSavedItems();
      yield SavedLoadedState(savedItems: _savedItems);
    } catch (_) {
      yield SavedEmptyState();
    }

    if (event is OnTapMovieDetailsEvent) {
      navigationService.navigateTo(
          page: Page.movieDetails, arguments: event.movieIdEvent);
    }
    if (event is OnTapDeleteSavedEvent) {
      _savedMoviesProvider.deleteSavedItem(event.movieId);
      _savedBlocMediator.addItem();
    }
  }
}

abstract class SavedEvent {}

class SavedInitializeEvent extends SavedEvent {}

class OnTapMovieDetailsEvent extends SavedEvent {
  final String movieIdEvent;

  OnTapMovieDetailsEvent({
    required this.movieIdEvent,
  });
}

class OnTapDeleteSavedEvent extends SavedEvent {
  final String movieId;

  OnTapDeleteSavedEvent({
    required this.movieId,
  });
}

abstract class SavedState {}

class SavedLoadingState extends SavedState {}

class SavedLoadedState extends SavedState {
  List<SavedItemModel> savedItems;

  SavedLoadedState({
    required this.savedItems,
  });
}

class SavedEmptyState extends SavedState {}

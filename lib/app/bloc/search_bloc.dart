import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/models/box_office/box_office.dart';
import 'package:movies_application/app/models/search_model/search_model.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/navigation_service.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final MoviesRepository _moviesRepository;
  var _boxOffice = <BoxOffice>[];
  var _searchResult = <SearchModel>[];

  SearchBloc(
    this._moviesRepository,
  ) : super(SearchEmptyState()) {
    add(SearchInitializeEvent());
  }

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is SearchInitializeEvent) {
      yield SearchLoadingState();

      try {
        _boxOffice = await _moviesRepository.getBoxOffice();

        yield SearchStartedLoadedState(
          boxOfficeList: _boxOffice,
        );
      } catch (_) {
        yield SearchEmptyState();
      }
    } else if (event is SearchBeginEvent) {
      _searchResult = await _moviesRepository.getSearchItems(event.titleId);
      if (event.titleId.length > 2)
        yield SearchResultLoadedState(
          resultSearch: _searchResult,
        );
    } else if (event is OnTapSearchResultItemEvent) {
      navigationService.navigateTo(
        page: Page.movieDetails,
        arguments: event.movieId,
      );
    } else if (event is OnTapTopBoxOfficeEvent) {
      navigationService.navigateTo(
        page: Page.movieDetails,
        arguments: event.movieId,
      );
    }
  }
}

abstract class SearchEvent {}

class SearchInitializeEvent extends SearchEvent {}

class SearchBeginEvent extends SearchEvent {
  String titleId;
  SearchBeginEvent({
    required this.titleId,
  });
}

class OnTapSearchResultItemEvent extends SearchEvent {
  String movieId;
  OnTapSearchResultItemEvent({
    required this.movieId,
  });
}

class OnTapTopBoxOfficeEvent extends SearchEvent {
  String movieId;
  OnTapTopBoxOfficeEvent({
    required this.movieId,
  });
}

abstract class SearchState {}

class SearchLoadingState extends SearchState {}

class SearchStartedLoadedState extends SearchState {
  List<BoxOffice> boxOfficeList;

  SearchStartedLoadedState({
    required this.boxOfficeList,
  });
}

class SearchResultLoadedState extends SearchState {
  List<SearchModel> resultSearch;
  SearchResultLoadedState({
    required this.resultSearch,
  });
}

class SearchEmptyState extends SearchState {}

import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/search_bloc.dart';
import 'package:movies_application/app/widgets/box_office_item.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/widgets/search_app_bar.dart';
import 'package:movies_application/app/widgets/search_result_item.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/generated/l10n.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final MoviesRepository _moviesRepository = MoviesRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(_moviesRepository),
      child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
        if (state is SearchLoadingState) {
          return Center(child: MyCircularProgressIndicator());
        }
        if (state is SearchStartedLoadedState) {
          return Scaffold(
            appBar: AppBar(
              title: SearchAppBar(
                  onChanged: (value) => {
                        BlocProvider.of<SearchBloc>(context)
                            .add(SearchBeginEvent(searchQuery: value))
                      }),
            ),
            body: SizedBox(
              width: 500,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    S.of(context).top_box_office,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: state.boxOfficeList.length,
                        itemBuilder: (context, index) {
                          final item = state.boxOfficeList[index];
                          return GestureDetector(
                            onTap: () =>
                                OnTapTopBoxOfficeMoviesEvent(movieId: item.id),
                            child: BoxOfficeItem(
                              title: item.title,
                              image: item.image,
                              weekend: item.weekend,
                              gross: item.gross,
                              weeks: item.weeks,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          );
        }
        if (state is SearchResultLoadedState) {
          return Scaffold(
            appBar: AppBar(
              title: SearchAppBar(
                  onChanged: (value) => {
                        BlocProvider.of<SearchBloc>(context)
                            .add(SearchBeginEvent(searchQuery: value))
                      }),
            ),
            body: SizedBox(
              width: 500,
              child: Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: state.resultSearch.length,
                    itemBuilder: (context, index) {
                      final item = state.resultSearch[index];
                      return GestureDetector(
                        onTap: () => BlocProvider.of<SearchBloc>(context)
                            .add(OnTapSearchResultItemEvent(movieId: item.id)),
                        child: SearchResultItem(
                          title: item.title,
                          image: item.image,
                          description: item.description,
                        ),
                      );
                    }),
              ),
            ),
          );
        }

        if (state is SearchEmptyState) {
          return Center(child: Text(S.of(context).not_found));
        }
        return SizedBox();
      }),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/movies_grid_view_bloc.dart';
import 'package:movies_application/data/grid_navigation_data.dart';
import 'package:movies_application/app/widgets/buttons/filter_button.dart';
import 'package:movies_application/app/widgets/movie_grid_card.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/generated/l10n.dart';

class MoviesGridView extends StatefulWidget {
  final GridNavigationData gridNavigationData;
  const MoviesGridView({
    Key? key,
    required this.gridNavigationData,
  }) : super(key: key);
  @override
  _MoviesGridViewState createState() => _MoviesGridViewState();
}

class _MoviesGridViewState extends State<MoviesGridView> {
  final MoviesRepository _moviesRepository = MoviesRepository();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieGridViewBloc>(
      create: (context) => MovieGridViewBloc(_moviesRepository)
        ..add(MovieGridViewInitializeEvent(
            gridNavigationDataEvent: widget.gridNavigationData)),
      child: BlocBuilder<MovieGridViewBloc, MovieGridViewState>(
        builder: (context, state) {
          if (state is MovieGridViewLoadingState) {
            return Center(child: MyCircularProgressIndicator());
          }
          if (state is MovieGridViewLoadedState) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  widget.gridNavigationData.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                actions: [
                  FilterButton(onTap: () {
                    BlocProvider.of<MovieGridViewBloc>(context)
                        .add(MoviesGridViewShowDialogEvent());
                  }),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.58,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: state.moviesList.length,
                    itemBuilder: (context, index) {
                      final item = state.moviesList[index];
                      return GestureDetector(
                        onTap: () => BlocProvider.of<MovieGridViewBloc>(context)
                            .add(OnTapMovieDetailsEvent(movieIdEvent: item.id)),
                        child: MovieGridCard(
                          itemImage: item.image,
                          itemRating: item.imDbRating ?? '',
                          itemTitle: item.title,
                          itemYear: item.year ?? '',
                        ),
                      );
                    }),
              ),
            );
          }
          if (state is MovieGridViewEmptyState) {
            return Center(
              child: Text(S.of(context).not_found),
            );
          }
          return SizedBox();
        },
      ),

      // ),
    );
  }
}

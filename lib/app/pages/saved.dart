import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/saved_bloc.dart';
import 'package:movies_application/app/bloc/saved_bloc_mediator.dart';
import 'package:movies_application/app/widgets/saved_item.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/saved_movies_provider.dart';
import 'package:movies_application/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/my_circular_progress_indicator.dart';

class Saved extends StatefulWidget {
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SavedBloc>(
      create: (context) => SavedBloc(
          getIt.get<SavedMoviesProvider>(), getIt.get<SavedBlocMediator>()),
      child: BlocBuilder<SavedBloc, SavedState>(builder: (context, state) {
        if (state is SavedLoadingState) {
          return Center(child: MyCircularProgressIndicator());
        }
        if (state is SavedLoadedState) {
          return Scaffold(
            body: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: state.savedItems.length,
                      itemBuilder: (context, index) {
                        final item = state.savedItems[index];
                        return GestureDetector(
                          onTap: () => {
                            BlocProvider.of<SavedBloc>(context).add(
                              OnTapMovieDetailsEvent(movieIdEvent: item.id),
                            ),
                          },
                          child: SavedItem(
                            title: item.title,
                            image: item.image,
                            onTapDelete: () => {
                              BlocProvider.of<SavedBloc>(context).add(
                                OnTapDeleteSavedEvent(movieId: item.id),
                              ),
                            },
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        }
        if (state is SavedEmptyState) {
          return Center(child: Text(S.of(context).not_found));
        }
        return SizedBox();
      }),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/app/bloc/movie_view_bloc.dart';
import 'package:movies_application/app/widgets/bottom_bar.dart';
import 'package:movies_application/app/widgets/movie_image.dart';
import 'package:movies_application/app/widgets/my_circular_progress_indicator.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieView extends StatefulWidget {
  final String movieId;
  // final String rating;

  const MovieView({
    Key? key,
    required this.movieId,
    // required this.rating,
  }) : super(key: key);

  @override
  _MovieViewState createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  final MoviesRepository _moviesRepository = MoviesRepository();
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = MovieViewBloc(_moviesRepository)
      ..add(MovieViewInitializeEvent(movieId: widget.movieId));
    return BlocProvider<MovieViewBloc>(
      create: (context) => bloc,
      child: BlocBuilder<MovieViewBloc, MovieViewState>(
        builder: (context, state) {
          if (state is MovieViewLoadingState) {
            return Center(child: MyCircularProgressIndicator());
          }
          if (state is MovieViewLoadedState) {
            return Scaffold(
              // appBar: AppBar(
              //   title: Row(children: [
              //     Text(
              //       '${state.movieList.title}',
              //       style: Theme.of(context).textTheme.headline6,
              //     ),
              //   ]),
              // ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(children: [
                    // Text(
                    //   '${state.movieList.}',
                    //   style: Theme.of(context).textTheme.headline6,
                    // )
                    CarouselSlider.builder(
                        itemCount: state.imageList.length,
                        options: CarouselOptions(
                          height: 250,
                          viewportFraction: 0.7,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 2),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: false,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemBuilder: (context, int index, int pageViewIndex) =>
                            MovieImage(
                              width: double.infinity,
                              height: 200,
                              imageUrl: '${state.imageList[index].image}',
                            )),
                  ]),
                ),
              ),
              bottomNavigationBar: BottomBar(),
            );
          }
          if (state is MovieViewEmptyState) {
            return Center(child: Text('No films'));
          }
          return Text('Exeption');
        },
      ),
      // ),
    );
  }
}

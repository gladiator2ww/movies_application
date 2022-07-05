import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_application/app/bloc/trailer_bloc.dart';
import 'package:movies_application/app/widgets/movie_trailer_info.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/generated/l10n.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../widgets/my_circular_progress_indicator.dart';

class MovieTrailer extends StatefulWidget {
  String movieId;

  MovieTrailer({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  _MovieTrailerState createState() => _MovieTrailerState();
}

class _MovieTrailerState extends State<MovieTrailer> {
  final MoviesRepository _moviesRepository = MoviesRepository();
  String? videoId;
  YoutubePlayerController _controller(String? videoId) =>
      YoutubePlayerController(
        initialVideoId: videoId ?? '',
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: false,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
        ),
      );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller(videoId).dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieTrailerBloc>(
      create: (context) => MovieTrailerBloc(_moviesRepository)
        ..add(MovieTrailerInitializeEvent(movieId: widget.movieId)),
      child: BlocBuilder<MovieTrailerBloc, MovieTrailerState>(
          builder: (context, state) {
        if (state is MovieTrailerLoadingState) {
          return Center(child: MyCircularProgressIndicator());
        }
        if (state is MovieTrailerLoadedState) {
          return YoutubePlayerBuilder(
            onEnterFullScreen: () {
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.landscapeLeft,
                DeviceOrientation.landscapeRight,
              ]);
            },
            onExitFullScreen: () {
              SystemChrome.setPreferredOrientations(
                  [DeviceOrientation.portraitUp]);
            },
            player: YoutubePlayer(
              controller: _controller(state.trailer.videoId),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
            builder: (context, player) => Scaffold(
              appBar: AppBar(
                title: Row(
                children: [
                  Text(
                    state.trailer.title,
                    style: Theme.of(context).appBarTheme.toolbarTextStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ]),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    player,
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        state.trailer.fullTitle,
                        style: Theme.of(context).textTheme.headline5,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    MovieTrailerInfo(
                      plot: state.movie.plot,
                      countries: state.movie.countries,
                      directors: state.movie.directors,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        if (state is MovieTrailerEmptyState) {
          return Center(child: Text(S.of(context).not_found));
        }
        return SizedBox();
      }),
    );
  }
}

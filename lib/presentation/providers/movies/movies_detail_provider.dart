import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesDetailProvider = StateNotifierProvider<MoviesMapNotifier, Map<String, Movie>>((ref) {
  final getMovieById = ref.watch(moviesRepositoryProvider).getMovieById;
  return MoviesMapNotifier(getMovieById: getMovieById);
});

typedef GetMovieCallback = Future<Movie> Function(String id);

class MoviesMapNotifier extends StateNotifier<Map<String, Movie>> {
  final GetMovieCallback getMovieById;

  MoviesMapNotifier({required this.getMovieById}) : super({});

  Future<void> loadMovie(String movieId) async {
    if (state.containsKey(movieId)) return;
    print('realizando peticion http');
    final movie = await getMovieById(movieId);

    state = {...state, movieId: movie};
  }
}

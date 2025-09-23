import 'package:cinemapedia/domain/entities/actor.dart';

abstract class MoviesDataSource {
  Future<List<Actor>> getActorsByMovie(String movieId);
}

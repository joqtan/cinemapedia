import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesDatasource moviesDatasource;
  MoviesRepositoryImpl({required this.moviesDatasource});

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    return moviesDatasource.getNowPlaying(page: page);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) async {
    return moviesDatasource.getPopular(page: page);
  }

  @override
  Future<List<Movie>> getTopRated({int page = 1}) async {
    return moviesDatasource.getTopRated(page: page);
  }

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) async {
    return moviesDatasource.getUpcoming(page: page);
  }
  
  @override
  Future<Movie> getMovieById(String id) {
    return moviesDatasource.getMovieById(id);
  }
}

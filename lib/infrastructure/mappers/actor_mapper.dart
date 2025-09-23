import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast castdb) => Actor(
    id: castdb.id,
    name: castdb.name,
    profilePath:
        castdb.profilePath != ''
            ? 'https://image.tmdb.org/t/p/w500${castdb.profilePath}'
            : 'https://www.shutterstock.com/shutterstock/photos/1153673752/display_1500/stock-vector-profile-placeholder-image-gray-silhouette-no-photo-1153673752.jpg',
    character: castdb.character,
  );
}

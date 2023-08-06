import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
      id: cast.id,
      name: cast.name,
      profilePath: (cast.profilePath != null)
          ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
          : 'https://einercial.com/wp-content/uploads/2018/04/Facebook-no-profile-picture-icon-620x389-450x313.jpg',
      character: cast.character);
}
import 'package:movies_app/core/models/models.dart';
import 'package:movies_app/home/domain/entities/movie_entity.dart';

class Mapper {
  static MovieEntity toMovieEntity(SingleMovieModel movie) {
    return MovieEntity(
        popular_backdrop_path: movie.backdrop_path ?? "Default",
        popular_poster_path: movie.poster_path ?? "Default",
        popular_release_date: movie.release_date ?? "Default",
        popular_vote_average: movie.vote_average ?? 5,
        popularAdult: movie.adult ?? false,
        popularId: movie.id ?? 011,
        popularTitle: movie.title ?? "Default",
        overview: movie.overview ?? "Default",
        genre_ids: movie.genre_ids ?? [011, 011, 011]);
  }
}

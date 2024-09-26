import 'package:movies_app/core/models/models.dart';

import '../../../core/entities/movie_entity.dart';

class Mapper {
  static MovieEntity toMovieEntity(SingleMovieModel movie) {
    return MovieEntity(
        movie_backdrop_path: movie.backdrop_path ?? "Default",
        movie_poster_path: movie.poster_path ?? "Default",
        movie_release_date: movie.release_date ?? "Default",
        movie_vote_average: movie.vote_average ?? 5,
        movieAdult: movie.adult ?? false,
        movieId: movie.id ?? 011,
        movieTitle: movie.title ?? "Default",
        overview: movie.overview ?? "Default",
        genre_ids: movie.genre_ids ?? [011, 011, 011]);
  }
}

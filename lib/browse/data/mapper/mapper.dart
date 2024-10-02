import 'package:movies_app/browse/data/models/genre_model.dart';
import 'package:movies_app/browse/domain/entities/genre_entity.dart';
import 'package:movies_app/core/models/models.dart';
import 'package:movies_app/core/movie_entities/movie_entity.dart';

class Mapper {
  static GenreEntity toGenreEntity(SingleGenreModel genre) {
    return GenreEntity(
        genreName: genre.name ?? "Default", genreID: genre.id ?? 011);
  }

  static MovieEntity toGenreMoviesEntity(SingleMovieModel movie) {
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

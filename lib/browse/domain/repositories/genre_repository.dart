import 'package:dartz/dartz.dart';
import 'package:movies_app/browse/domain/entities/genre_entity.dart';

import '../../../core/failure/failure.dart';
import '../../../core/movie_entities/movie_entity.dart';

abstract class GenreRepository {
  Future<Either<Failure, List<GenreEntity>>> getGenres();

  Future<Either<Failure, List<MovieEntity>>> getGenreMovies();
}

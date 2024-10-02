import 'package:dartz/dartz.dart';
import 'package:movies_app/browse/domain/repositories/genre_repository.dart';
import 'package:movies_app/core/movie_entities/movie_entity.dart';

import '../../../core/failure/failure.dart';

class GenreMoviesUseCase {
  GenreRepository genreRepo;

  GenreMoviesUseCase(this.genreRepo);

  Future<Either<Failure, List<MovieEntity>>> excute() async {
    return await genreRepo.getGenreMovies();
  }
}

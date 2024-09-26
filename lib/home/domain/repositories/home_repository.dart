import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failure/failure.dart';

import '../entities/movie_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();

  Future<Either<Failure, List<MovieEntity>>> getNewReleaseMovies();

  Future<Either<Failure, List<MovieEntity>>> getRecommendedMovies();
}

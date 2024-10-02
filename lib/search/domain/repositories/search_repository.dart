import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failure/failure.dart';

import '../../../core/movie_entities/movie_entity.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<MovieEntity>>> getMovies();
}

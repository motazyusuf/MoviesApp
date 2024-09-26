import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failure/failure.dart';
import 'package:movies_app/search/domain/entities/search_movie_entity.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<MovieEntity>>> getMovies();
}

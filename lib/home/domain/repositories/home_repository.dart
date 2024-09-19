import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failure/failure.dart';
import 'package:movies_app/home/domain/entities/home_entities.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<PopularEntity>>> getPopularMovies();

  Future<Either<Failure, List<NewReleaseEntity>>> getNewReleaseMovies();

  Future<Either<Failure, List<RecommendedEntity>>> getRecommendedMovies();
}

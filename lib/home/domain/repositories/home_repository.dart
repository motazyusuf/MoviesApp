import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failure/failure.dart';
import 'package:movies_app/home/domain/entities/recommended_entity.dart';

import '../entities/new_release_entity.dart';
import '../entities/popular_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<PopularEntity>>> getPopularMovies();
  Future<Either<Failure, List<NewReleaseEntity>>> getNewReleaseMovies();
  Future<Either<Failure, List<RecommendedEntity>>> getRecommendedMovies();
}

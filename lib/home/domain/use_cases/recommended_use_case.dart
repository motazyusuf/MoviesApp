import 'package:dartz/dartz.dart';
import 'package:movies_app/home/domain/repositories/home_repository.dart';

import '../../../core/entities/movie_entity.dart';
import '../../../core/failure/failure.dart';

class RecommenedUseCase {
  RecommenedUseCase(this.homeRepo);

  final HomeRepository homeRepo;

  Future<Either<Failure, List<MovieEntity>>> execute() async {
    return await homeRepo.getRecommendedMovies();
  }
}

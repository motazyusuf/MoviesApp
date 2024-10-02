import 'package:dartz/dartz.dart';
import 'package:movies_app/home/domain/repositories/home_repository.dart';

import '../../../core/failure/failure.dart';
import '../../../core/movie_entities/movie_entity.dart';

class PopularUseCase {
  PopularUseCase(this.homeRepo);

  final HomeRepository homeRepo;

  Future<Either<Failure, List<MovieEntity>>> execute() async {
    return await homeRepo.getPopularMovies();
  }
}

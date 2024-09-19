import 'package:dartz/dartz.dart';
import 'package:movies_app/home/domain/repositories/home_repository.dart';

import '../../../core/failure/failure.dart';
import '../entities/home_entities.dart';

class PopularUseCase {
  PopularUseCase(this.homeRepo);

  final HomeRepository homeRepo;

  Future<Either<Failure, List<PopularEntity>>> execute() async {
    return await homeRepo.getPopularMovies();
  }
}

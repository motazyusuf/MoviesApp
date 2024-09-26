import 'package:movies_app/home/domain/repositories/home_repository.dart';

class RecommenedUseCase {
  RecommenedUseCase(this.homeRepo);

  final HomeRepository homeRepo;

// Future<Either<Failure, List<RecommendedEntity>>> execute() async {
//   return await homeRepo.getRecommendedMovies();
// }
}

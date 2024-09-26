import 'package:movies_app/home/domain/repositories/home_repository.dart';

class NewReleaseUseCase {
  NewReleaseUseCase(this.homeRepo);

  final HomeRepository homeRepo;

// Future<Either<Failure, List<NewReleaseEntity>>> execute() async {
//   return await homeRepo.getNewReleaseMovies();
// }
}

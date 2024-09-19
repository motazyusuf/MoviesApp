import 'package:movies_app/home/domain/repositories/home_repository.dart';

class UpcomingUseCase {
  UpcomingUseCase(this.homeRepo);

  final HomeRepository homeRepo;

  execute() async {
    return await homeRepo.getUpcomingMovies();
  }
}

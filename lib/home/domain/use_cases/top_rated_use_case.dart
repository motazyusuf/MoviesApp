import 'package:movies_app/home/domain/repositories/home_repository.dart';

class TopRatedUseCase {
  TopRatedUseCase(this.homeRepo);

  final HomeRepository homeRepo;

  execute() async {
    return await homeRepo.getTopRatedMovies();
  }


}
import 'package:movies_app/home/domain/entities/home_entities.dart';
import 'package:movies_app/home/domain/use_cases/top_rated_use_case.dart';

abstract class HomeRepository {
  Future<PopularEntity> getPopularMovies();

  Future<NewReleaseEntity> getNewReleaseMovies();

  Future<TopRatedUseCase> getTopRatedMovies();
}

import 'package:movies_app/home/data/data_sources/home_data_source.dart';
import 'package:movies_app/home/domain/entities/home_entities.dart';
import 'package:movies_app/home/domain/repositories/home_repository.dart';

class HomeRepositoriesImp extends HomeRepository {
  HomeRepositoriesImp(this._homeDataSource);

  @override
  final HomeDataSource _homeDataSource;

  getPopularMovies() {
    // TODO: implement getPopularMovies

    throw UnimplementedError();
  }

  @override
  getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }

  @override
  Future<NewReleaseEntity> getNewReleaseMovies() {
    // TODO: implement getNewReleaseMovies
    throw UnimplementedError();
  }
}

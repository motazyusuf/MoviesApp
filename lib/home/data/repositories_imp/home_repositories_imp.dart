import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failure/failure.dart';
import 'package:movies_app/core/models/models.dart';
import 'package:movies_app/home/data/data_sources/home_data_source.dart';
import 'package:movies_app/home/domain/entities/popular_entity.dart';
import 'package:movies_app/home/domain/entities/recommended_entity.dart';
import 'package:movies_app/home/domain/repositories/home_repository.dart';

import '../../domain/entities/new_release_entity.dart';

class HomeRepositoriesImp extends HomeRepository {
  HomeRepositoriesImp(this._homeDataSource);

  @override
  final HomeDataSource _homeDataSource;

  @override
  Future<Either<Failure, List<RecommendedEntity>>>
      getRecommendedMovies() async {
    MoviesModel moviesModelObject = await _homeDataSource.recommendedData();
    // TODO: implement getRecommendedMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<NewReleaseEntity>>> getNewReleaseMovies() async {
    MoviesModel moviesModelObject = await _homeDataSource.newReleaseData();
    // TODO: implement getNewReleaseMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PopularEntity>>> getPopularMovies() async {
    MoviesModel moviesModelObject = await _homeDataSource.popularData();
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }
}

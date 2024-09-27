import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/failure/failure.dart';
import 'package:movies_app/core/models/models.dart';
import 'package:movies_app/home/data/data_sources/home_data_source.dart';
import 'package:movies_app/home/domain/repositories/home_repository.dart';

import '../../../core/entities/movie_entity.dart';
import '../mapper/mapper.dart';

class HomeRepositoriesImp extends HomeRepository {
  HomeRepositoriesImp(this._homeDataSource);

  @override
  final HomeDataSource _homeDataSource;

  @override
  Future<Either<Failure, List<MovieEntity>>> getRecommendedMovies() async {
    try {
      Response response = await _homeDataSource.recommendedData();
      MoviesModel moviesModelObject = MoviesModel.fromJson(response.data);

      if (response.statusCode == 200) {
        return right(moviesModelObject.moviesList!
            .map((movie) => Mapper.toMovieEntity(movie))
            .toList());
      } else {
        return left(Failure(
            statusCode: response.statusCode.toString(),
            errorMessage: response.data["status_message"]));
      }
    } on DioException catch (dioException) {
      return left(Failure(
          errorMessage: dioException.error.toString(),
          statusCode:
              dioException.response?.statusCode.toString() ?? ">> Error <<"));
    }

    // TODO: implement getRecommendedMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getNewReleaseMovies() async {
    try {
      Response response = await _homeDataSource.newReleaseData();
      MoviesModel moviesModelObject = MoviesModel.fromJson(response.data);

      if (response.statusCode == 200) {
        return right(moviesModelObject.moviesList!
            .map((movie) => Mapper.toMovieEntity(movie))
            .toList());
      } else {
        return left(Failure(
            statusCode: response.statusCode.toString(),
            errorMessage: response.data["status_message"]));
      }
    } on DioException catch (dioException) {
      return left(Failure(
          errorMessage: dioException.error.toString(),
          statusCode:
              dioException.response?.statusCode.toString() ?? ">> Error <<"));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    try {
      Response response = await _homeDataSource.popularData();
      MoviesModel moviesModelObject = MoviesModel.fromJson(response.data);

      if (response.statusCode == 200) {
        return right(moviesModelObject.moviesList!
            .map((movie) => Mapper.toMovieEntity(movie))
            .toList());
      } else {
        return left(Failure(
            statusCode: response.statusCode.toString(),
            errorMessage: response.data["status_message"]));
      }
    } on DioException catch (dioException) {
      return left(Failure(
          errorMessage: dioException.error.toString(),
          statusCode:
              dioException.response?.statusCode.toString() ?? ">> Error <<"));
    }
  }
}

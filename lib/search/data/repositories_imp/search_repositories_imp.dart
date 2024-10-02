import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/failure/failure.dart';
import 'package:movies_app/core/models/models.dart';

import '../../../core/movie_entities/movie_entity.dart';
import '../../domain/repositories/search_repository.dart';
import '../data_sources/search_data_source.dart';
import '../mapper/mapper.dart';

class SearchRepositoriesImp extends SearchRepository {
  SearchRepositoriesImp(this._searchDataSource);

  @override
  final SearchDataSource _searchDataSource;

  @override
  Future<Either<Failure, List<MovieEntity>>> getMovies() async {
    try {
      Response response = await _searchDataSource.searchData();
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

    // TODO: implement getMovies
    throw UnimplementedError();
  }
}

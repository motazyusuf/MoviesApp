import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/browse/data/data_sources/genre_data_source.dart';
import 'package:movies_app/browse/data/mapper/mapper.dart';
import 'package:movies_app/browse/domain/entities/genre_entity.dart';
import 'package:movies_app/browse/domain/repositories/genre_repository.dart';
import 'package:movies_app/core/failure/failure.dart';
import 'package:movies_app/core/models/models.dart';
import 'package:movies_app/core/movie_entities/movie_entity.dart';

import '../models/genre_model.dart';

class GenreRepositoryImp extends GenreRepository {
  final GenreDataSource _genreDataSource;

  GenreRepositoryImp(this._genreDataSource);

  @override
  Future<Either<Failure, List<GenreEntity>>> getGenres() async {
    try {
      Response response = await _genreDataSource.genreData();
      if (response.statusCode == 200) {
        GenresModel genresModelObject = GenresModel.fromJson(response.data);
        return right(
          genresModelObject.genresList!
              .map((genre) => Mapper.toGenreEntity(genre))
              .toList(),
        );
      } else {
        return left(
          Failure(
            statusCode: response.statusCode.toString(),
            errorMessage: response.data["status_message"],
          ),
        );
      }
    } on DioException catch (dioException) {
      return left(
        Failure(
          statusCode: dioException.response!.statusCode.toString(),
          errorMessage: dioException.error.toString(),
        ),
      );
    }
    // TODO: implement getGenres
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getGenreMovies() async {
    try {
      Response response = await _genreDataSource.genreMoviesData();
      if (response.statusCode == 200) {
        MoviesModel genreMoviesModelObject =
            MoviesModel.fromJson(response.data);
        return right(
          genreMoviesModelObject.moviesList!
              .map((movie) => Mapper.toGenreMoviesEntity(movie))
              .toList(),
        );
      } else {
        return left(
          Failure(
            statusCode: response.statusCode.toString(),
            errorMessage: response.data["status_message"],
          ),
        );
      }
    } on DioException catch (dioException) {
      return left(
        Failure(
          statusCode: dioException.response!.statusCode.toString(),
          errorMessage: dioException.error.toString(),
        ),
      );
    }
    // TODO: implement getGenres
    throw UnimplementedError();
  }
}

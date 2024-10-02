import 'package:dio/dio.dart';

abstract class GenreDataSource {
  Future<Response> genreData();

  Future<Response> genreMoviesData();
}

class OnlineGenreDataSource extends GenreDataSource {
  final Dio dio;
  String genre;

  OnlineGenreDataSource({required this.dio, this.genre = ""});

  @override
  Future<Response> genreData() async {
    return await dio.get("genre/movie/list");
    // TODO: implement genreData
    throw UnimplementedError();
  }

  @override
  Future<Response> genreMoviesData() async {
    return await dio
        .get("discover/movie", queryParameters: {"with_genres": genre});
    // TODO: implement genreData
    throw UnimplementedError();
  }
}

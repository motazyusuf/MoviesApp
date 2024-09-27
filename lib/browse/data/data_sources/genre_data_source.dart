import 'package:dio/dio.dart';

abstract class GenreDataSource {
  Future<Response> genreData();
}

class OnlineGenreDataSource extends GenreDataSource {
  final Dio dio;

  OnlineGenreDataSource(this.dio);

  @override
  Future<Response> genreData() async {
    return await dio.get("genre/movie/list");
    // TODO: implement genreData
    throw UnimplementedError();
  }
}

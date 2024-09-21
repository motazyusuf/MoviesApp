import 'package:dio/dio.dart';
import 'package:movies_app/core/models/models.dart';

abstract class HomeDataSource {
  Future<MoviesModel> popularData();

  Future<MoviesModel> newReleaseData();

  Future<MoviesModel> recommendedData();
}

class OnlineHomeDataSource extends HomeDataSource {
  final Dio dio;

  OnlineHomeDataSource(this.dio);

  @override
  Future<MoviesModel> popularData() async {
    Response response = await dio.get(
      "movie/popular",
    );
    return MoviesModel.fromJson(response.data);
  }

  @override
  Future<MoviesModel> newReleaseData() async {
    Response response = await dio.get(
      "movie/upcoming",
    );
    return MoviesModel.fromJson(response.data);
  }

  @override
  Future<MoviesModel> recommendedData() async {
    Response response = await dio.get(
      "movie/top_rated",
    );
    return MoviesModel.fromJson(response.data);
  }
}

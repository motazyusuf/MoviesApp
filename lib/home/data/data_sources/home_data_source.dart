import 'package:dio/dio.dart';

abstract class HomeDataSource {
  Future<Response> popularData();

  Future<Response> newReleaseData();

  Future<Response> recommendedData();
}

class OnlineHomeDataSource extends HomeDataSource {
  final Dio dio;

  OnlineHomeDataSource(this.dio);

  @override
  Future<Response> popularData() async {
    Response response = await dio.get(
      "movie/popular",
    );
    return response;
  }

  @override
  Future<Response> newReleaseData() async {
    Response response = await dio.get(
      "movie/upcoming",
    );
    return response;
  }

  @override
  Future<Response> recommendedData() async {
    Response response = await dio.get(
      "movie/top_rated",
    );
    return response;
  }
}

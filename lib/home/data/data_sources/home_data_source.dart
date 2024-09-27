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
    return await dio.get(
      "movie/popular",
    );
  }

  @override
  Future<Response> newReleaseData() async {
    return await dio.get(
      "movie/upcoming",
    );
  }

  @override
  Future<Response> recommendedData() async {
    return await dio.get(
      "movie/top_rated",
    );
  }
}

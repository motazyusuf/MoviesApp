import 'package:dio/dio.dart';

abstract class HomeDataSource {
  Future<Response> popularData();

  Future<Response> upcomingData();

  Future<Response> topRatedData();
}

class OnlineHomeDataSource extends HomeDataSource {
  final Dio dio;

  OnlineHomeDataSource(this.dio);

  @override
  Future<Response> popularData() async {
    return await dio.get("movie/popular",
        queryParameters: {'language': 'en-US', 'page': 1});
  }

  @override
  Future<Response> topRatedData() async {
    return await dio.get("movie/upcoming",
        queryParameters: {'language': 'en-US', 'page': 1});
  }

  @override
  Future<Response> upcomingData() async {
    return await dio.get("movie/top_rated",
        queryParameters: {'language': 'en-US', 'page': 1});
  }
}

import 'package:dio/dio.dart';

abstract class HomeDataSource {
  Future<Response> popularData();

  Future<Response> upcomingData();

  Future<Response> topRatedData();
}

class OnlineHomeDataSource extends HomeDataSource {
  final Dio _dio;

  OnlineHomeDataSource(this._dio);

  @override
  Future<Response> popularData() async {
    return await _dio.get("movie/popular",
        queryParameters: {'language': 'en-US', 'page': 1});
    // TODO: implement homeData
    throw UnimplementedError();
  }

  @override
  Future<Response> topRatedData() async {
    return await _dio.get("movie/upcoming",
        queryParameters: {'language': 'en-US', 'page': 1});
    // TODO: implement topRatedData
    throw UnimplementedError();
  }

  @override
  Future<Response> upcomingData() async {
    return await _dio.get("movie/top_rated",
        queryParameters: {'language': 'en-US', 'page': 1});
    // TODO: implement upcomingData
    throw UnimplementedError();
  }
}

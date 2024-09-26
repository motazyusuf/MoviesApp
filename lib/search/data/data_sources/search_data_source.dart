import 'package:dio/dio.dart';

abstract class SearchDataSource {
  Future<Response> searchData();
}

class OnlineSearchDataSource extends SearchDataSource {
  Dio dio;
  String query;

  OnlineSearchDataSource({required this.dio, required this.query});

  @override
  Future<Response> searchData() async {
    Response response =
        await dio.get("search/movie", queryParameters: {"query": query});
    return response;
    // TODO: implement searchData
    throw UnimplementedError();
  }
}

import 'package:dio/dio.dart';

abstract class SearchDataSource {
  Future<Response> searchData();
}

class OnlineSearchDataSource extends SearchDataSource {
  Dio dio;

  OnlineSearchDataSource({required this.dio});

  @override
  Future<Response> searchData() async {
    Response response = await dio.get("movie/popular");
    return response;
    // TODO: implement searchData
    throw UnimplementedError();
  }
}

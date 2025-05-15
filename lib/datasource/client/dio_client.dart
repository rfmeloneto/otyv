import 'package:dio/dio.dart';
import 'package:otyv/datasource/client/client.dart';

class DioClient implements Client {
  static Dio dioInstance = Dio();
}
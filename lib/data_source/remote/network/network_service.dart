import 'package:dio/dio.dart';
import 'package:eds_app/data_source/remote/network/app_api.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@Singleton()
class NetworkService {
  late AppApi _client;

  NetworkService() {
    final dio = Dio();

    dio.interceptors.add(PrettyDioLogger());

    _client = AppApi(dio);
  }

  AppApi get client => _client;

}

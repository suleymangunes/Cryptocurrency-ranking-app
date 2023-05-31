import 'package:cryptocurrency_ranking_app/view/home/service/crypto/crypto_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class GetItSource {
  static final GetItSource _singleton = GetItSource._internal();

  factory GetItSource() {
    return _singleton;
  }

  GetItSource._internal();

  static final getIt = GetIt.instance;
  static final dio = Dio();

  static void setup() {
    getIt.registerSingleton<CryptoDataSourceWithDio>(CryptoDataSourceWithDio(dio: dio));
    getIt.registerSingleton<CryptoDataSourceWithHttp>(CryptoDataSourceWithHttp());
  }
}

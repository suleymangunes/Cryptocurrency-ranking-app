import 'dart:convert';
import 'package:cryptocurrency_ranking_app/view/_product/constants/api/api_constants.dart';
import 'package:cryptocurrency_ranking_app/view/_product/service/i_crypto_data_source.dart';
import 'package:cryptocurrency_ranking_app/view/home/model/crypto.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class CryptoDataSourceWithHttp extends ICryptoDataSource {
  CryptoDataSourceWithHttp() {
    url = ApiConstants.url;
    header = ApiConstants.header;
  }
  late String url;
  late Map<String, String> header;

  @override
  Future<List<Crypto>> fetchData() async {
    final response = await http.get(Uri.parse(url), headers: header);
    final body = jsonDecode(response.body) as Map<String, dynamic>;
    final json = body['data'] as List;
    return json.map((e) => Crypto.fromJson(e as Map<String, dynamic>)).toList();
  }
}

class CryptoDataSourceWithDio extends ICryptoDataSource {
  CryptoDataSourceWithDio({required this.dio}) {
    url = ApiConstants.url;
    header = ApiConstants.header;
  }

  late String url;
  late Map<String, String> header;
  final Dio dio;

  @override
  Future<List<Crypto>> fetchData() async {
    final response = await dio.get(url, options: Options(headers: header));
    final json = response.data['data'] as List;
    return json.map((e) => Crypto.fromJson(e as Map<String, dynamic>)).toList();
  }
}

class CryptoRepository {
  final ICryptoDataSource cryptoDataSource;
  CryptoRepository(this.cryptoDataSource);

  Future<List<Crypto>> getProducts() async {
    return await cryptoDataSource.fetchData();
  }
}

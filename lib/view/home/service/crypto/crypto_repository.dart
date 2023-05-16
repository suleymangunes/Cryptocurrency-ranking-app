import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cryptocurrency_ranking_app/view/_product/constants.dart/api/api_constants.dart';
import 'package:cryptocurrency_ranking_app/view/_product/service/i_crypto_repository.dart';
import 'package:cryptocurrency_ranking_app/view/home/model/crypto.dart';

class CryptoRepository extends ICryptoRepository {
  CryptoRepository() {
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

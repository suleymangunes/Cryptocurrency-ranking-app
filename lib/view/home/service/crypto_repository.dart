import 'dart:convert';
import 'package:cryptocurrency_ranking_app/view/_product/constants.dart/api/api_constants.dart';
import 'package:cryptocurrency_ranking_app/view/_product/service/i_crypto_repository.dart';
import 'package:cryptocurrency_ranking_app/view/home/model/crypto.dart';
import 'package:http/http.dart' as http;

class CryptoRepository extends ICryptoRepository {
  late String url;
  late Map<String, String> header;

  CryptoRepository() {
    url = ApiConstants.url;
    header = ApiConstants.header;
  }

  @override
  Future<List<Crypto>> fetchData() async {
    http.Response response = await http.get(Uri.parse(url), headers: header);
    List json = jsonDecode(response.body)["data"] as List;
    return json.map((e) => Crypto.fromJson(e)).toList();
  }
}

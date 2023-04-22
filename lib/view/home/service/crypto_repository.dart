import 'dart:convert';
import 'package:cryptocurrency_ranking_app/view/home/model/crypto.dart';
import 'package:http/http.dart' as http;

abstract class ICryptoRepository {
  const ICryptoRepository();
  Future<List<Crypto>> fetchData();
}

class CryptoRepository extends ICryptoRepository {
  String url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=99&convert=USD";
  Map<String, String> header = {
    'Accepts': 'application/json',
    'X-CMC_PRO_API_KEY': 'b899eac9-4ac5-41b7-816e-9b992c79cd85',
  };

  @override
  Future<List<Crypto>> fetchData() async {
    var response = await http.get(Uri.parse(url), headers: header);
    var json = jsonDecode(response.body)["data"] as List;
    return json.map((e) => Crypto.fromJson(e)).toList();
  }
}

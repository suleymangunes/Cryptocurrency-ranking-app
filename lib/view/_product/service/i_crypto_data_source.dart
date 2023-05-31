import 'package:cryptocurrency_ranking_app/view/home/model/crypto.dart';

abstract class ICryptoDataSource {
  const ICryptoDataSource();
  Future<List<Crypto>> fetchData();
}

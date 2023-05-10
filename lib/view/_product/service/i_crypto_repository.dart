import 'package:cryptocurrency_ranking_app/view/home/model/crypto.dart';

abstract class ICryptoRepository {
  const ICryptoRepository();
  Future<List<Crypto>> fetchData();
}

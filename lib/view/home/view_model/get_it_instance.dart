import 'package:cryptocurrency_ranking_app/view/home/service/crypto/crypto_repository.dart';
import 'package:cryptocurrency_ranking_app/view/home/service/get-it/get_it_source.dart';

mixin GetItInstance {
  CryptoDataSourceWithHttp getHttp() {
    return GetItSource.getIt<CryptoDataSourceWithHttp>();
  }

  CryptoDataSourceWithDio getDio() {
    return GetItSource.getIt<CryptoDataSourceWithDio>();
  }
}

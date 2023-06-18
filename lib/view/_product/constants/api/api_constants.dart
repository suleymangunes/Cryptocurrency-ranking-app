import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  const ApiConstants._();
  static const String url =
      'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=99&convert=USD';
  static final Map<String, String> header = {
    'Accepts': 'application/json',
    'X-CMC_PRO_API_KEY': dotenv.env["COIN_MARKET_CAP_API_KEY"].toString(),
  };
}

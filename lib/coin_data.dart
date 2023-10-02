import 'dart:convert';
import 'constant.dart';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {

  Future<dynamic> getCoinData(dynamic selectecCurrency) async {
    int num;
    String currency;
    String uriString =
        'https://rest.coinapi.io/v1/exchangerate/BTC/$selectecCurrency?apikey=$apiKey';
    Uri uri = await Uri.parse(uriString);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var data = response.body;
      var decodedInfo = jsonDecode(data);
      num = decodedInfo['rate'].toInt();
      currency = decodedInfo['asset_id_quote'];
      print('Status is successful: ${response.statusCode}');
      print("$num $currency");
      return ('$num $currency');
    } else {
      print('${response.statusCode}');
      return 0;
    }
  }
}

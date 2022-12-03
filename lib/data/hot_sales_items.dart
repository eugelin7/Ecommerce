import 'dart:convert';
import 'package:ecommerce/=models=/hot_sales_item.dart';

const _jsonString = '''
[
    {
      "id": 1,
      "is_new": true,
      "title": "Iphone 12",
      "subtitle": "Súper. Mega. Rápido.",
      "picture": "https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both",
      "is_buy": true
    },
    {
      "id": 2,
      "title": "Samsung Galaxy A71",
      "subtitle": "Súper. Mega. Rápido.",
      "picture": "https://cdn-2.tstatic.net/kupang/foto/bank/images/pre-order-samsung-galaxy-a71-laris-manis-inilah-rekomendasi-ponsel-harga-rp-6-jutaan.jpg",
      "is_buy": true
    },
    {
      "id": 3,
      "title": "Xiaomi Mi 11 ultra",
      "subtitle": "Súper. Mega. Rápido.",
      "picture": "https://static.digit.in/default/942998b8b4d3554a6259aeb1a0124384dbe0d4d5.jpeg",
      "is_buy": true
    }
]
''';

final List<dynamic> _jsonList = json.decode(_jsonString);

final List<HotSalesItem> kHotSalesItems =
    _jsonList.map((item) => HotSalesItem.fromJson(item)).toList();

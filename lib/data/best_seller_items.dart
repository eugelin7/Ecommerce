import 'dart:convert';
import 'package:ecommerce/=models=/best_seller_item.dart';

const _jsonString = '''
[
    {
      "id": 111,
      "is_favorites": true,
      "title": "Samsung Galaxy s20 Ultra",
      "price_without_discount": 1047,
      "discount_price": 1500,
      "picture": "https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg"
    },
    {
      "id": 222,
      "is_favorites": true,
      "title": "Xiaomi Mi 10 Pro",
      "price_without_discount": 300,
      "discount_price": 400,
      "picture": "https://mi92.ru/wp-content/uploads/2020/03/smartfon-xiaomi-mi-10-pro-12-256gb-global-version-starry-blue-sinij-1.jpg"
    },
    {
      "id": 3333,
      "is_favorites": true,
      "title": "Samsung Note 20 Ultra",
      "price_without_discount": 1047,
      "discount_price": 1500,
      "picture": "https://opt-1739925.ssl.1c-bitrix-cdn.ru/upload/iblock/c01/c014d088c28d45b606ed8c58e5817172.jpg?160405904823488"
    },
    {
      "id": 4444,
      "is_favorites": true,
      "title": "Motorola One Edge ",
      "price_without_discount": 300,
      "discount_price": 400,
      "picture": "https://www.benchmark.rs/assets/img/news/edge1.jpg"
    }
  ]
''';

final List<dynamic> _jsonList = json.decode(_jsonString);

final List<BestSellerItem> kBestSellersItems =
    _jsonList.map((item) => BestSellerItem.fromJson(item)).toList();

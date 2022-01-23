// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../items.dart';

class ItemService {
  final String _serviceUrl = "https://kesali-shopping.herokuapp.com/item/";

  Future<List<Item>> fetchItems() async {
    final response = await http.get(_serviceUrl);

    if (response.statusCode == 200) {
      Iterable items = json.decode(response.body);
      return items.map((item) => Item.fromJson(item)).toList();
    } else {
      throw Exception("Something went wrong!");
    }
  }
}

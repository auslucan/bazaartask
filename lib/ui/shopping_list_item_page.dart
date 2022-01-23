// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:bazaartask/http/item_service.dart';
import 'package:bazaartask/items.dart';
import 'package:flutter/material.dart';

class ShoppingListItemPage extends StatefulWidget {
  @override
  _ShoppingListItemPageState createState() => _ShoppingListItemPageState();
}

class _ShoppingListItemPageState extends State<ShoppingListItemPage> {
  ItemService _itemService;

  @override
  void initState() {
    _itemService = ItemService();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _itemService.fetchItems(),
      builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
        return ListView.builder(
          itemCount: snapshot.data?.length,
          itemBuilder: (BuildContext context, int index) {
            Item item = snapshot.data[index];
            return ListTile(
              title: Text(item.name),
            );
          },
        );
      },
    );
  }
}

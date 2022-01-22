import 'package:bazaartask/ui/shopping_list_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(ShoppingListApp());

class ShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingListPage(),
      theme:
          ThemeData(primarySwatch: Colors.green, backgroundColor: Colors.white),
    );
  }
}

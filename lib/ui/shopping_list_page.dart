import 'package:bazaartask/ui/dialog.dart';
import 'package:bazaartask/ui/shopping_list_item_page.dart';
import 'package:flutter/material.dart';

class ShoppingListPage extends StatefulWidget {
  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String itemName = await showDialog(
              context: context, builder: (BuildContext) => ItemDialog());
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text("Shopping List")),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text("History")),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          ShoppingListItemPage(),
          Container(color: Colors.orange),
          Container(color: Colors.red)
        ],
      ),
    );
  }

  void _onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}

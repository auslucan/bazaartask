import 'package:flutter/cupertino.dart';

class Item {
  late int id;
  late String name;
  late bool isCompleted;
  late bool isArchived;

  Item(this.id, this.isArchived, this.isCompleted, this.name);
  factory Item.fromJson(Map<String, dynamic> map) {
    return Item(map['id'], map['name'], map['isCompleted'], map['isArchived']);
  }
}

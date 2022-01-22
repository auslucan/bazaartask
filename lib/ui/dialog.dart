import 'package:flutter/material.dart';

class ItemDialog extends StatefulWidget {
  const ItemDialog({Key? key}) : super(key: key);

  @override
  _ItemDialogState createState() => _ItemDialogState();
}

class _ItemDialogState extends State<ItemDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text("Add your item to list"),
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              Form(
                child: TextFormField(),
              ),
              SizedBox(height: 16,)
              FlatButton(
                child: Text("Add item to shoping list"),
                onPressed: () {},
                color: Theme.of(context).accentColor,
              )
            ],
          ),
        )
      ],
    );
  }
}

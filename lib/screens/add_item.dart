import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    var title = Container(
      child: Text(
        'Adicione um item a sua lista !',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        textAlign: TextAlign.center,
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 30),
    );
    var itemField = TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.add_shopping_cart),
          labelText: 'Item',
          labelStyle: TextStyle(fontSize: 18),
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          hintText: 'Digite seu item do mercado'),
      keyboardType: TextInputType.text,
    );
    return Container(
      child: Column(
        children: <Widget>[
          Center(child: title),
          Container(
            child: itemField,
            margin: const EdgeInsets.only(left: 10, right: 10,top: 20),
          ),
        ],
      ),
    );
  }
}

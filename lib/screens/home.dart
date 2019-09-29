import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: Row(
        children: <Widget>[
          InkWell(
            onLongPress: () {
              print('aaaa');
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 30,
              child: Center(
                child: Text(
                  'Selecionar todos',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
            ),
          ),InkWell(
            onLongPress: () {
              print('aaaa');
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 30,
              child: Center(
                child: Text(
                  'Remover Todos',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

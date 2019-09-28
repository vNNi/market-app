import 'package:flutter/material.dart';

import './widgets/bottomNavigation.dart';
import './screens/home.dart';

class Market extends StatefulWidget {
  Market({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Home(),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}

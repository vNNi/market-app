import 'package:flutter/material.dart';

import './widgets/bottomNavigation.dart';
import './screens/home.dart';
import './screens/add_item.dart';

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
  int _elementIndex = 0;
 
  void handleClick(index){
    setState(() {
      _elementIndex = index;
    });
  }
  var screens = [Home(), AddItem()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: screens.elementAt(_elementIndex),
      ),
      bottomNavigationBar: Navigation(handleClick: this.handleClick, currentIndex: _elementIndex),
    );
  }
}

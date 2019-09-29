import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  final Function handleClick;
  final int currentIndex;

  Navigation({this.handleClick, this.currentIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_add_check),
            title: Text('Verificar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('Adicionar'),
          ),
        ],
        onTap: (index){
          handleClick(index);
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
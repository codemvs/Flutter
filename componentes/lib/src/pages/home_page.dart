import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Component'),),
      body: _lista(),
    );
  }

 Widget _lista() {
   return ListView(
     children: _crearListaItems()
   );
 }

  Iterable<Widget> _crearListaItems() {
    return [
      ListTile(title: Text('Hola Mundo')),
      ListTile(title: Text('Hola Mundo')),
      ListTile(title: Text('Hola Mundo')),
      ListTile(title: Text('Hola Mundo'))
    ];
  }
}
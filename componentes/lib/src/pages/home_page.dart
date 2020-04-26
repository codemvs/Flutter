import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/pages/alert_page.dart';
class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Component'),),
      body: _lista(),
    );
  }

 Widget _lista() {
   
  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      return ListView(
        children: _crearListaItems(snapshot.data,context),
      );
    }
  );
 }

  Iterable<Widget> _crearListaItems(List<dynamic> data, BuildContext context) {
    return data.map((item){
      return Column(
        children: <Widget>[
         ListTile(
            title: Text(item["texto"]),
            leading: getIcon(item["icon"]),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              // final route = MaterialPageRoute(
              //   builder: (context) => AlertPage()
              // );
              // Navigator.push(context, route);
              Navigator.pushNamed(context, item["ruta"]);
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
import 'package:flutter/material.dart';
class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
  
}
//  Solo se utilizara en esta pagina 
class _ContadorPageState extends State<ContadorPage> {  
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
    @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de tabs:', style: _estiloTexto,),
            Text( '$_conteo',style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

Widget _crearBotones(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox(width: 25),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset,),
      Expanded(child: SizedBox(),),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer,),
      SizedBox(width: 5),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar,),
    ],
  );
}
void _agregar(){  
  setState(()=>_conteo++ );
}
void _sustraer(){
  setState(() => _conteo-- );
}
void _reset(){
  setState(()=>_conteo=0);
}
}
import 'package:flutter/material.dart';
class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),      
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Soy el subtitulo de la tarjeta'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){
                  
                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          // Cargar imagen con preloader
          FadeInImage(
            image: NetworkImage('https://www.publicdomainpictures.net/pictures/30000/velka/evening-landscape-13530956185Aw.jpg'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,

          ),
          // Imanges carga nomrmal
          // Image( 
          //   image: NetworkImage('https://www.publicdomainpictures.net/pictures/30000/velka/evening-landscape-13530956185Aw.jpg')
          // ),
          
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Loremo impusm')
          )
        ],
      ),
    );
  }

}
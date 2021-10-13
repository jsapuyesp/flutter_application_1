import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
      ),
      body: ListView(
          children: <Widget>[_cardTipo1()], padding: EdgeInsets.all(15.0)),
    );
  }

  _cardTipo1() => Card(
          child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text("Titulo"),
              subtitle: Text("lorem ipsum dolor sit amet")),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            FlatButton(
              child: Text("Cancelar"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("Ok"),
              onPressed: () {},
            ),
          ])
        ],
      ));
}

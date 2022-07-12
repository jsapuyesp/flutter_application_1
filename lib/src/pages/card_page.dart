import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
      ),
      body: ListView(children: <Widget>[
        _cardTipo1(),
        SizedBox(height: 30.0),
        _cardTipo2(),
      ], padding: EdgeInsets.all(15.0)),
    );
  }

  Widget _cardTipo1() => Card(
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

  Widget _cardTipo2() => Card(
    child: Column(children: <Widget>[
      Image(
        image: NetworkImage(
          'https://mymodernmet.com/wp/wp-content/uploads/2020/02/international-landscape-photographer-of-the-year-thumbnail.jpg'))
    ])
  );
}

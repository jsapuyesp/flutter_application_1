import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/menu_provider.dart';
import 'package:flutter_application_1/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    /* menuProvider.cargarData().then((opciones) {
      print('_lista');
      print(opciones);
    }); */
    /* return ListView(
      children: _listaItems(),
    ); */

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        return ListView(children: _listaItems(snapshot.data, context));
      });
  }

  List<Widget> _listaItems(data, BuildContext context) {
    final List<Widget> opciones = [];
    opciones.add(Divider());
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blue),
        onTap: () {
          /* final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.push(context, route); */

        Navigator.pushNamed(context, opt['ruta']);

        },
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }
}

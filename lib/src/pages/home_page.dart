
import 'package:dialogos/src/providers/menu_provider.dart';
import 'package:dialogos/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplos_Dialogos'),
        backgroundColor: Colors.tealAccent,
      ),
      body: _lista(context),
    );
  }

  Widget _lista(BuildContext context){
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, snapshot){
        print(snapshot.data);
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right_sharp,
          color: Colors.lightBlueAccent,
        ),
        onTap: () {
         /*   context: context,
          showDialog(
            builder: (BuildContext context) => _buildPopUpDialog(context, opt['texto']),
        },
          );*/
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    }
    );
    return opciones;
  }
}

import 'package:flutter/material.dart';

        /*Ejemplo de Dialogo de alerta*/
   class AlertPage extends StatelessWidget{
     @override 
    Widget build(BuildContext context){
    final AlertDialog dialog = AlertDialog(
      title: Text('ALERTA: ¿Esta seguro de eliminar la información seleccionada?'),
      content:
          Text('Una vez eliminada la información se quitara permanentemente'),
      actions: [
        FlatButton(
          textColor: Colors.purpleAccent,
          onPressed: () => Navigator.pop(context),
          child: Text('CANCELAR'),
        ),
        FlatButton(
          textColor: Colors.lightBlueAccent,
          onPressed: () => Navigator.pop(context),
          child: Text('ACEPTAR'),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertPage'),
        backgroundColor: Colors.purpleAccent,
),
      body: Center(
        child: FlatButton(
          textColor: Colors.orange,
          highlightColor: Colors.transparent,
          onPressed: () {
            showDialog<void>(context: context, builder: (context) => dialog);
          },
          child: Text("Alert Dialog"),
        ),
      ),
    );

      /*Ejemplo de Dialogo simple*/

     
    /* class AlertPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    final SimpleDialog dialog = SimpleDialog(
      title: Text('Seleccionar cuenta de respaldo'),
      children: [
        SimpleDialogItem(
          icon: Icons.account_circle,
          color: Colors.orange,
          text: 'usuario1@gmail.com',
          onPressed: () {
            Navigator.pop(context, 'usuario1@gmail.com');
          },
        ),
        SimpleDialogItem(
          icon: Icons.account_circle,
          color: Colors.green,
          text: 'usuario2@gmail.com',
          onPressed: () {
            Navigator.pop(context, 'usuario2@gmail.com');
          },
        ),
        SimpleDialogItem(
          icon: Icons.add_circle,
          color: Colors.grey,
          text: 'Agregar nueva cuenta',
          onPressed: () {
            Navigator.pop(context, 'Agregar nueva cuenta');
          },
        ),
      ],
    );

    return Scaffold(
       appBar: AppBar(
        title: Text('AlertPage'),
        backgroundColor: Colors.purpleAccent,
),
      body: Center(
        child: FlatButton(
          textColor: Color(0xFF6200EE),
          highlightColor: Colors.transparent,
          onPressed: () {
            showDialog<void>(context: context, builder: (context) => dialog);
          },
          child: Text("SHOW DIALOG"),
        ),
      ),
    );
  }
}

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem(
      {Key key, this.icon, this.color, this.text, this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );*/

    /*Ejemplo de Dialogo de confirmacion*/
    
    /*class AlertPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    final AlertDialog dialog = AlertDialog(
      title: Text('CONFIRMAR'),
      content:
          Text('Desea eliminar los registros guardados'),
      actions: [
        FlatButton(
          textColor: Color(0xFF6200EE),
          onPressed: () => Navigator.pop(context),
          child: Text('NO'),
        ),
        FlatButton(
          textColor: Color(0xFF6200EE),
          onPressed: () => Navigator.pop(context),
          child: Text('SI,ELIMINAR'),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertPage'),
        backgroundColor: Colors.purpleAccent,
),
      body: Center(
        child: FlatButton(
          textColor: Color(0xFF6200EE),
          highlightColor: Colors.transparent,
          onPressed: () {
            showDialog<void>(context: context, builder: (context) => dialog);
          },
          child: Text("Confirmation Dialog"),
        ),
      ),
    );*/

    /*Ejemplo de Dialogo de pantalla completa*/
    /*class AlertPage extends StatelessWidget{
    @override 
    Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('New entry'),
        actions: [
          new FlatButton(
              onPressed: () {
                
              },
              child: new Text('SAVE',
                  style: Theme
                      .of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white))),
        ],
      ),
       body: Center(
        child: Text("Full-screen dialog")
       ),
    );*/
  }
}
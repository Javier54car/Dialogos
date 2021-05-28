
import 'package:flutter/material.dart';
import 'package:dialogos/src/pages/alert_page.dart';
import 'package:dialogos/src/pages/home_page.dart';
import 'src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'DIALOGOS',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/':(BuildContext context)=>HomePage(), 
        'alert':(BuildContext context)=>AlertPage(), 
      },
    );
  } 
}
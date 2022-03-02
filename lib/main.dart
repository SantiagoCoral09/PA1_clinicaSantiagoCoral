import 'package:flutter/material.dart';
import 'package:clinica/views/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:
            false, // para quitar barra que aparece en el celular debug
        title: 'App Clínica Odontológica',
        home: Login());
  }
}

import 'package:flutter/material.dart';

class DatosPersonales extends StatelessWidget {
  final datos = {
    "Santiago Alejandro Coral Ruano",
    "Código: 217036022",
    "Dirección: Calle 10 No 5-10",
    "Celular: 3122913686",
    "Correo: santiagocoral@gmail.com"
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Datos Personales'),
      ),
      body: ListView(children: [
        Divider(),
        Text('Datos Guardados'),
        Divider(),
        Icon(Icons.accessibility_new),
        ...datos
            .map(
              (personal) => ListTile(
                title: Text(personal),
              ),
            )
            .toList(),
      ]),
    );
  }
}

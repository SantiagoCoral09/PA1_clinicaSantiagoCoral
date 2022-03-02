import 'package:flutter/material.dart';

class CitasAgenda extends StatelessWidget {
  final cita1 = {
    "Tratamiento: 1. Blanqueamiento Dental",
    "Fecha y Hora de la cita: 21/06/2022  08:00 am",
    "Doctor: Manuel Solarte"
  };

  final cita2 = {
    "Tratamiento: 2. Extracción de muelas del juicio",
    "Fecha y Hora de la cita: 2/05/2022  09:00 am",
    "Doctora: Sandra Guevara"
  };

  final cita3 = {
    "Tratamiento: 3. Ortodoncia brackets",
    "Fecha y Hora de la cita: 12/09/2022  08:00 am",
    "Doctor: Javier Pistala"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas y Agendamiento'),
      ),
      body: ListView(children: [
        Divider(),
        Text('Citas a tener en cuenta', textAlign: TextAlign.center),
        Divider(),
        ...cita1
            .map(
              (personal) => ListTile(
                subtitle: Text(personal),
              ),
            )
            .toList(),
        Divider(),
        ...cita2
            .map(
              (personal) => ListTile(
                subtitle: Text(personal),
              ),
            )
            .toList(),
        Divider(),
        ...cita3
            .map(
              (personal) => ListTile(
                subtitle: Text(personal),
              ),
            )
            .toList(),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class CitasAgenda extends StatelessWidget {
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
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.sms),
                title: Text("Tratamiento: 1. Blanqueamiento Dental"),
                subtitle: Text(
                    "Fecha y Hora de la cita: 12/09/2022 08:00 am \n Doctor: Javier Pistala"),
              ),
            ],
          ),
        ),
        Divider(),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.sms),
                title: Text("Tratamiento: 2. Extracción de muelas del juicio"),
                subtitle: Text(
                    "Fecha y Hora de la cita: 2/05/2022  09:00 am\nDoctora: Sandra Guevara"),
              ),
            ],
          ),
        ),
        Divider(),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.sms),
                title: Text("Tratamiento: 3. Ortodoncia brackets"),
                subtitle: Text(
                    "Fecha y Hora de la cita: 12/09/2022  08:00 am\nDoctor: Javier Pistala"),
              ),
            ],
          ),
        ),
        Divider(),
      ]),
    );
  }
}

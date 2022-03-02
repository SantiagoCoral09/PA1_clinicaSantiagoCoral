import 'package:flutter/material.dart';

class Pagos extends StatelessWidget {
  final pago1 = {
    "Tratamiento: 1. Blanqueamiento Dental",
    "Fecha del pago: 21/06/2022",
    "Medio de pago: Efectivo",
    "Valor: 100.000 COP"
  };

  final pago2 = {
    "Tratamiento: 2. Extracción de muelas del juicio",
    "Fecha del pago: 2/05/2022",
    "Medio de pago: Efectivo",
    "Valor: 400.000 COP"
  };

  final pago3 = {
    "Tratamiento: 3. Ortodoncia brackets",
    "Fecha del pago: 12/09/2022",
    "Medio de pago: Tarjeta de Crédito",
    "Valor: 600.000 COP"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagos Realizados'),
      ),
      body: ListView(children: [
        Divider(),
        Text('Pagos ', textAlign: TextAlign.center),
        Divider(),
        ...pago1
            .map(
              (personal) => ListTile(
                subtitle: Text(personal),
              ),
            )
            .toList(),
        Divider(),
        ...pago2
            .map(
              (personal) => ListTile(
                subtitle: Text(personal),
              ),
            )
            .toList(),
        Divider(),
        ...pago3
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

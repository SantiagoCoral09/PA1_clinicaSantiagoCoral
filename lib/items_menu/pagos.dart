import 'package:flutter/material.dart';

class Pagos extends StatelessWidget {
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
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.payment),
                title: Text("Tratamiento: 1. Blanqueamiento Dental"),
                subtitle: Text(
                    "Fecha del pago: 21/06/2022\nMedio de pago: Efectivo\nValor: 100.000 COP"),
              ),
            ],
          ),
        ),
        Divider(),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.payment),
                title: Text("Tratamiento: 2. Extracción de muelas del juicio"),
                subtitle: Text(
                    "Fecha del pago: 2/05/2022\nMedio de pago: Efectivo\nValor: 400.000 COP"),
              ),
            ],
          ),
        ),
        Divider(),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.payment),
                title: Text("Tratamiento: 3. Ortodoncia brackets"),
                subtitle: Text(
                    "Fecha del pago: 12/09/2022\nMedio de pago: Tarjeta de Crédito\nValor: 600.000 COP"),
              ),
            ],
          ),
        ),
        Divider(),
      ]),
    );
  }
}

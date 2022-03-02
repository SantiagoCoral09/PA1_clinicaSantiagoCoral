import 'package:clinica/items_menu/citasAgenda.dart';
import 'package:flutter/material.dart';
import 'package:clinica/items_menu/datosPersonales.dart';
import 'package:clinica/items_menu/tratamientos.dart';
import 'package:clinica/items_menu/citas.dart';
import 'package:clinica/items_menu/pagos.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Menu Principal')),
        body: ListView(
          children: [
            ListTile(
              title: Text('Datos Personales'),
              leading: Icon(Icons.account_box),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DatosPersonales()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Mis Tratamientos'),
              leading: Icon(Icons.accessible),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tratamientos()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Citas y Agendamiento'),
              leading: Icon(Icons.calendar_today),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CitasAgenda()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Pagos Realizados'),
              leading: Icon(Icons.payment),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pagos()));
              },
            ),
            Divider(),
          ],
        ));
  }
}

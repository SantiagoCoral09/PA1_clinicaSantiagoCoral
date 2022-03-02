import 'package:flutter/material.dart';

class Tratamientos extends StatelessWidget {
  final tratamiento1 = {
    "1. Blanqueamiento Dental",
    "Fecha: 21/05/2022",
    "Quitar todas las manchas dentales que puedan tener los dientes, ya sean provocadas por causas naturales o por factores externos como la cafeína o la nicotina.",
  };
  final tratamiento2 = {
    "2. Extracción de muelas del juicio",
    "Fecha: 2/04/2022",
    "Extraer algunas piezas bucales, ya sea por infección o porque genera molestia o malestar. Lo que suele llevar a cabo este proceso de extracción suele ser dolores intensos en los terceros molares, inflamación de encías, malocusión, surgimiento de quistes o infecciones bucales.",
  };
  final tratamiento3 = {
    "3. Ortodoncia brackets",
    "Fecha: 12/08/2022",
    "Corregir los problemas de la mordida, de tal manera  que tiene como principal objetivo alinear los dientes y la mandíbula. Corregir otros problemas dentales del tipo de enfermedades en las encías, caries en los dientes, caída de los dientes o desgaste del esmalte dental.",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Tratamientos'),
      ),
      body: ListView(children: [
        Divider(),
        Text('Nombre del Tratamiento, Fecha y Observaciones ',
            textAlign: TextAlign.center),
        Divider(),
        ...tratamiento1
            .map(
              (personal) => ListTile(
                subtitle: Text(personal),
              ),
            )
            .toList(),
        Divider(),
        ...tratamiento2
            .map(
              (personal) => ListTile(
                subtitle: Text(personal),
              ),
            )
            .toList(),
        Divider(),
        ...tratamiento3
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

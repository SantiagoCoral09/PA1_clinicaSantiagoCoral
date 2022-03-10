import 'package:flutter/material.dart';
import 'package:clinica/views/menu_principal.dart';

class Login extends StatefulWidget {
  @override
  _ListView1State createState() => _ListView1State();
}

class _ListView1State extends State<Login> {
  final _user = TextEditingController();
  final _pass = TextEditingController();

  String usuario = ''; //Vacio
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Página de Inicio de Sesión')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _crearInput1(),
            Divider(),
            _crearInput2(),
            Divider(),
            _miBoton(),
          ],
        ));
  }

  //Crear funcion que retorne un TextBox
  Widget _crearInput1() {
    return TextField(
      controller: _user, //capturar
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        hintText: 'Agrega tu Username',
        labelText: 'Nombre de Usuario',
        helperText: 'Debes solo ingresar tu Username!',
        suffixIcon: Icon(Icons.accessibility),
      ),
    );
  }

  Widget _crearInput2() {
    return TextField(
      controller: _pass, //capturar
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        hintText: 'Agrega tu Password',
        labelText: 'Password',
        helperText: 'Debes solo ingresar tu Password!',
        suffixIcon: Icon(Icons.all_inclusive),
      ),
    );
  }

  Widget _miBoton() {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text('Iniciar Sesión'),
      onPressed: () {
        usuario = _user.text;
        password = _pass.text;
        print(usuario);
        if (usuario == '217036022' && password == '217036022') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MenuPrincipal()));
        } else {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  content: Text('Usuario o Contraseña Incorrecto'));
            },
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:preuba/paginas/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String fondo =
      "https://www.okchicas.com/wp-content/uploads/2019/03/Fondos-para-celular-1.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(130, 66, 115, 176),
      ),
      home: Container(
        decoration:
            BoxDecoration(image: DecorationImage(
              image: NetworkImage(fondo),
              fit: BoxFit.cover)),
        child: (_MyHomePageState()),
      ),
    );
  }
}

class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(0, 3, 168, 244),
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text('Casita'),
            TextButton(
              child: const Text("Entrar"),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pagPrincipal()))
              },
            ),
            TextButton(
              child: Text("Alerta"),
              onPressed: (){_mostrarAlerta(context);},
            )
          ],
        )));
  }
}

void _mostrarAlerta(BuildContext context){
  showDialog(
    builder: (context) => AlertDialog(
      title: Text("Error"),
      content: Text("Cuenta Equivocada"),
      actions: [
        TextButton(
          child: Text("Cerrar"), 
          onPressed:() {
            Navigator.pop(context);
          } ),
      ],
    ), barrierDismissible: false,
    context: context);
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  String dato1 = "", resultadoF1 = "?", resultadoC1 = "?";
  String dato2 = "", resultadoF2 = "?", resultadoC2 = "?";
  TextEditingController CF = TextEditingController();
  TextEditingController CC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[400],
        child: ListView(
          children: [
            Container(
              color: Colors.blueGrey[400],
              child: Column(
                children: [
                  Text(
                    "Nivel: 1",
                    style: TextStyle(
                      color: Colors.red[400],
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Aplicacion Android para la Conversion grados centigrados Fahrenheit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 150,
                    child: TextField(
                      controller: CF,
                      onChanged: (texto) {
                        dato1 = texto;
                      },
                      decoration: InputDecoration(hintText: "ingrese °C: "),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blueAccent[700],
                    child: Text("Convertir a Fahrenheit"),
                    onPressed: () {
                      setState(() {
                        double reF = double.parse(dato1) * 1.8000 + 32.00;
                        print("FARENHEIT " + (reF.toInt()).toString());
                        resultadoC1 = (reF.toInt()).toString();
                        dato1 = dato1;
                      });
                    },
                  ),
                  Text(
                    dato1.toString() + "°C= " + resultadoC1.toString() + "°F",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.green[200],
                    ),
                  ),
                  Text(
                    "Mostrar Formula:",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "°F= " + dato1.toString() + "°C* 1.8000 + 32.00",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.lightBlue[200],
                    ),
                  ),
                  Text(
                    "Nivel: 2",
                    style: TextStyle(
                      color: Colors.red[400],
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RaisedButton(
                      child: Text(
                        "Inicializar",
                        style: TextStyle(fontSize: 25),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)),
                      color: Colors.red[800],
                      onPressed: () {
                        setState(() {
                          CF.text = "";
                          dato1 = "";
                          resultadoF1 = "?";
                          resultadoC1 = "?";
                          CC.text = "";
                          dato2 = "";
                          resultadoF2 = "?";
                          resultadoC2 = "?";
                        });
                      }),
                  Text(
                    "Nivel: 3",
                    style: TextStyle(
                      color: Colors.red[400],
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 150,
                    child: TextField(
                      controller: CC,
                      onChanged: (texto) {
                        dato2 = texto;
                      },
                      decoration: InputDecoration(hintText: "ingrese °F: "),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blueAccent[700],
                    child: Text("Convertir a Centigrados"),
                    onPressed: () {
                      setState(() {
                        double re2F = (double.parse(dato2) - 32.00) / 1.8000;
                        print("Centigrados " + (re2F.toInt()).toString());
                        resultadoC2 = (re2F.toInt()).toString();
                        dato2 = dato2;
                      });
                    },
                  ),
                  Text(
                    dato2.toString() + "°F= " + resultadoC2.toString() + "°C",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.green[200],
                    ),
                  ),
                  Text(
                    "Mostrar Formula:",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "°C= " + dato2.toString() + "°F - 32.00 / 1.8000",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.lightBlue[200],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

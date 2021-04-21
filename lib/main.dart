import 'package:calculadora/widgets/button/buttonWidgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const double font = 14.0;
  String view = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculadora",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 28.0,
            ),
          ),
          backgroundColor: Colors.black26,
        ),
        body: Center(
            child: Container(
                color: Colors.black26,
                child: Expanded(
                    child: Column(children: <Widget>[
                  Icon(Icons.calculate_outlined,
                      size: 150.0, color: Colors.black38),
                  Divider(),
                  TextField(
                      decoration: InputDecoration(
                    labelText: view,
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  )),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      symbolButtonWidget("1", font),
                      symbolButtonWidget("2", font),
                      symbolButtonWidget("3", font),
                      symbolButtonWidget("/", font),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      symbolButtonWidget("4", font),
                      symbolButtonWidget("5", font),
                      symbolButtonWidget("6", font),
                      symbolButtonWidget("*", font),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      symbolButtonWidget("7", font),
                      symbolButtonWidget("8", font),
                      symbolButtonWidget("9", font),
                      symbolButtonWidget("+", font),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      symbolButtonWidget("=", font),
                      symbolButtonWidget("0", font),
                      symbolButtonWidget(".", font),
                      symbolButtonWidget("-", font),
                    ],
                  ),
                ])))));
  }

  Widget buttonWidget(String simbolo, Color cor) {
    return ElevatedButton(
        onPressed: onPressedButton(),
        child: Text(
          simbolo,
          style: TextStyle(color: Colors.white, fontSize: font),
        ),
        style: ElevatedButton.styleFrom(onSurface: cor));
  }

  onPressedButton() {
    // switch (simbolo) {
    //   case "0":
    //     view = view.toString() + "0";
    //         break;
    //   case "1":
    //     view = view.toString() + "1";
    //     break;
    //   case "2":
    //     view = view.toString() + "2";
    //     break;
    //   case "3":
    //   case "4":
    //   case "5":
    //   case "6":
    //   case "7":
    //   case "8":
    //   case "9":
    //   case "/":
    //   case "*":
    //   case "+":
    //   case "-":
    //   case ".":
    //   case "=":
    // }
    // setState(() {
    //
    // });
  }
}

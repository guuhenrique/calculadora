import 'package:calculadora/screen/screen_page_result.dart';
import 'package:calculadora/widgets/button/buttonWidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  static const double FONT = 20.0;
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
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black26,
      ),
      body: Center(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.black26,
              child: Expanded(
                  child: Column(children: <Widget>[
                    Icon(Icons.calculate_outlined,
                        size: 150.0, color: Colors.black38),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            //width: 300,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.fromBorderSide(
                                  BorderSide(color: Colors.black26)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SymbolButtonWidget("1", FONT),
                        SymbolButtonWidget("2", FONT),
                        SymbolButtonWidget("3", FONT),
                        SymbolButtonWidget("/", FONT),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SymbolButtonWidget("4", FONT),
                        SymbolButtonWidget("5", FONT),
                        SymbolButtonWidget("6", FONT),
                        SymbolButtonWidget("*", FONT),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SymbolButtonWidget("7", FONT),
                        SymbolButtonWidget("8", FONT),
                        SymbolButtonWidget("9", FONT),
                        SymbolButtonWidget("+", FONT),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (
                                context) => ScreenPageResult()));
                          },
                          child: SymbolButtonWidget("=", FONT),
                        ),
                        SymbolButtonWidget("0", FONT),
                        SymbolButtonWidget(".", FONT),
                        SymbolButtonWidget("-", FONT),
                      ],
                    ),
                  ])))),

    );
  }
}
import 'package:flutter/material.dart';

class ScreenPageResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: SafeArea(
              top: true,
              child: BackButton(),
            )),
        body: Container(
            child: Center(
                child: Column(children: [
          Container(
              color: Colors.white,
              child: Text(
                "Resultado",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ]))));
  }
}

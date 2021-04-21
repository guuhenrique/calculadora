import 'package:flutter/material.dart';

class symbolButtonWidget extends StatelessWidget {
  double font;
  final String simbolo;
  Color corBackground;

  Color cor(simbolo){
    if(simbolo == "="){
      corBackground = const Color(0xFFFF630707);
    }else{
      corBackground = Colors.black54;
    }
    return corBackground;
  }

  symbolButtonWidget(String this.simbolo, double font);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.cor(simbolo),
        border: Border.fromBorderSide(BorderSide(
          color: Colors.black87,
        )),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36, vertical: 12),
          child: Text(
            simbolo,
            style: TextStyle(
              color: Colors.white,
              fontSize: font,
            ),
          )),
    );
  }
}

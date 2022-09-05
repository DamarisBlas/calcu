/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);


  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  Widget numButton(String btnText, Color btnColor, Color txtColor) {
    return ElevatedButton(
      onPressed: () {
        calculate(btnText);
      },
      child: Text(
        btnText,
        style: TextStyle(
          fontSize: 25,
          color: txtColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        shape: CircleBorder(),
        primary: btnColor,
      ),
    );

  }






@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      title: Text("Calculadora"),
      backgroundColor: Colors.black,
    ),
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  text,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 80),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numButton("C", Colors.redAccent, Colors.black),
              numButton("+/-", Colors.black, Colors.black),
              numButton("%", Colors.black, Colors.black),
              numButton("/", Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numButton("7", (Colors.grey[850])!, Colors.white),
              numButton("8", (Colors.grey[850])!, Colors.white),
              numButton("9", (Colors.grey[850])!, Colors.white),
              numButton("x", Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numButton("4", (Colors.grey[850])!, Colors.white),
              numButton("5", (Colors.grey[850])!, Colors.white),
              numButton("6", (Colors.grey[850])!, Colors.white),
              numButton("-", Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numButton("1", (Colors.grey[850])!, Colors.white),
              numButton("2", (Colors.grey[850])!, Colors.white),
              numButton("3", (Colors.grey[850])!, Colors.white),
              numButton("+", Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(28, 12, 90, 12),
                  child: Text(
                   // text,
                    "0",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: (Colors.grey[850])!,
                ),
              ),
              numButton(".", (Colors.grey[850])!, Colors.white),
              numButton("=", Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    ),
  );
}

// Logica

int n1 = 0;
int n2= 0;


String resultado = "";
String text = "";
String operacion = "";

void calculate(String btnText) {
  if (btnText == "C") {
    resultado = "";
    text = "";
    n1 = 0;
   n2= 0;
  } else if (btnText == "+" ||
      btnText == "-" ||
      btnText == "x" ||
      btnText == "/") {
    n1= int.parse(text);
    resultado = "";
    operacion = btnText;
  } else if (btnText == "=") {
    n2 = int.parse(text);
    if (operacion == "+") {
      resultado = (n1 + n2).toString();
    }
    if (operacion == "-") {
      resultado = (n1 - n2).toString();
    }
    if (operacion == "x") {
      resultado = (n1 * n2).toString();
    }
    if (operacion == "/") {
      resultado = (n1 ~/ n2).toString();
    }

  } else {
    resultado = int.parse(text + btnText).toString();
  }
  setState(() {
    text = resultado;
  });
}
}
*/
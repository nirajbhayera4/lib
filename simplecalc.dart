import 'package:flutter/material.dart';

void main() {
  runApp(calculatorApp());
}

class calculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: calculatorScreen(),
    );
  }
}

class calculatorScreen extends StatefulWidget {
  @override
  State<calculatorScreen> createState() => _calculatorScreenState();
}

class _calculatorScreenState extends State<calculatorScreen> {
  String _output = '0';
  double _num1 = 0;
  double _num2 = 0;
  String _operator = "";

  void _buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _output = "0";
      _num1 = 0;
      _num2 = 0;
      _operator = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "*" ||
        buttonText == "/") {
      _num1 = double.parse(_output);
      _operator = buttonText;
      _output = "0";
    } else if (buttonText == "=") {
      _num2 = double.parse(_output);
      switch (_operator) {
        case "+":
          _output = (_num1 + _num2).toString();
          break;
        case "-":
          _output = (_num1 - _num2).toString();
          break;
        case "*":
          _output = (_num1 * _num2).toString();
          break;
        case "/":
          if (_num2 != 0) {
            _output = (_num1 / _num2).toString();
          } else {
            _output = "error";
          }
          break;
      }
      _num1 = 0;
      _num2 = 0;
      _operator = "";
    } else {
      if (_output == "0") {
        _output = buttonText;
      } else {
        _output += buttonText;
      }
    }
    setState(() {});
  }

  Widget _buildButton(String buttonText) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () => _buttonPressed(buttonText),
              child: Text(
                buttonText,
                style: TextStyle(fontSize: 20),
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("simple calculator"),
        ),
        body: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    _output,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(), // horizontal line which leaves some space
                Column(
                  children: [
                    Row(
                      children: [
                        _buildButton("7"),
                        _buildButton("8"),
                        _buildButton("9"),
                        _buildButton("/"),
                      ],
                    ),
                    Row(
                      children: [
                        _buildButton("4"),
                        _buildButton("5"),
                        _buildButton("6"),
                        _buildButton("*"),
                      ],
                    ),
                    Row(
                      children: [
                        _buildButton("1"),
                        _buildButton("2"),
                        _buildButton("3"),
                        _buildButton("-"),
                      ],
                    ),
                    Row(
                      children: [
                        _buildButton("C"),
                        _buildButton("0"),
                        _buildButton("="),
                        _buildButton("+"),
                      ],
                    ),
                  ],
                )
              ],
            )));
  }
}

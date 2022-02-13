import 'package:flutter/material.dart';
import 'input.dart';
import 'result.dart';
import 'convert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  double _kelvin = 0.0;
  double _fahrenheit = 0.0;
  double _input = 0.0;

  calculateResult() {
    return setState(() {
      _kelvin = _input + 273;
      _fahrenheit = (_input * 9 / 4) + 32;
    });
  }

  getInput(String text) {
    return setState(() {
      if (text.isNotEmpty) {
        _input = double.parse(text);
      } else {
        _input = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text("Konversi Suhu")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(inputHandler: getInput),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Result(result: _kelvin),
                  Result(result: _fahrenheit),
                ],
              ),
              Convert(
                konvertHandler: calculateResult,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

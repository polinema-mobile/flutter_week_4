import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required double result,
  })  : _kelvin = result,
        super(key: key);

  final double _kelvin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Suhu dalam Kelvin"),
        Text(_kelvin.toStringAsFixed(2)),
      ],
    );
  }
}

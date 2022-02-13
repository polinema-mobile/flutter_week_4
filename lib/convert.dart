import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  const Convert({Key? key, required this.konvertHandler}) : super(key: key);

  final VoidCallback konvertHandler;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: konvertHandler,
        child: const Text('Konversi'),
      ),
    );
  }
}

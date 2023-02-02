import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: const Text('Dados'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: const Dados(),
      ),
    ),
  );
}

class Dados extends StatefulWidget {
  const Dados({Key? key}) : super(key: key);

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int numDadoLeft = 1;
  int numDadoRight = 1;

  void buttonFaces() {
    setState(() {
      numDadoLeft = Random().nextInt(6) + 1;
      numDadoRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                buttonFaces();
              },
              child: Image.asset('assets/dado$numDadoLeft.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                buttonFaces();
              },
              child: Image.asset('assets/dado$numDadoRight.png'),
            ),
          )
        ],
      ),
    );
  }
}

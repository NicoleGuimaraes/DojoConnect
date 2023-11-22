import 'package:flutter/material.dart';

class Config extends StatelessWidget {
  const Config({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Color.fromARGB(255, 175, 53, 39),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'EM BREVE será implementado.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

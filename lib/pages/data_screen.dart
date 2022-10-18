import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({
    Key? key,
  }) : super(key: key);

  TextStyle commonStyle() => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Apresentação do nome
            Text(
              'Nome: ',
              style: commonStyle(),
            ),

            // Apresentação da idade
            Text(
              'idade: ',
              style: commonStyle(),
            ),
          ],
        ),
      ),
    );
  }
}

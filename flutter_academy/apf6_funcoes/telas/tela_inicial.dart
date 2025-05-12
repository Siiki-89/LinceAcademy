import 'package:flutter/material.dart';

import '../ap1.dart';
import '../estilo.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corBackground,
      appBar: AppBar(title: Center(child: Text('Tipos sanguíneos'))),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/lista');
                  },
                  style: styleButton(),
                  child: const Text(
                    'Listar pessoas',
                    style: TextStyle(
                      color: corText,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/formulario');
                  },
                  style: styleButton(),
                  child: const Text(
                    'Adicionar pessoas',
                    style: TextStyle(
                      color: corText,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

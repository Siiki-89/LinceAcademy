import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  final random = Random();
  late int botaoCorreto;
  String resultado = '';
  Color colorResultado = Colors.transparent;
  bool jogoEncerrado = false;

  @override
  void initState() {
    super.initState();
    botaoCorreto = random.nextInt(3) + 1;
  }

  void verificarBotao(int botaoSelecionado) {
    if (jogoEncerrado) return;
    setState(() {
      if (botaoCorreto == botaoSelecionado) {
        resultado = 'Você ganhou!';
        colorResultado = Colors.green;
        jogoEncerrado = true;
      } else if (contador >= 2) {
        resultado = 'Você perdeu!';
        colorResultado = Colors.red;
        jogoEncerrado = true;
      } else {
        resultado = 'Você errou!';
        colorResultado = Colors.red;
        contador++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Opção aleatoria')),
        body: Center(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => verificarBotao(1),
                child: Text('Botão 1', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => verificarBotao(2),
                child: Text('Botão 2', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () => verificarBotao(3),
                child: Text('Botão 3', style: TextStyle(color: Colors.white)),
              ),
              Text(resultado, style: TextStyle(color: colorResultado)),
            ],
          ),
        ),
      ),
    );
  }
}

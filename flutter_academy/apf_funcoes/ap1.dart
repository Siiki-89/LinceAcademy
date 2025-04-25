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
  //Lista de cores
  final List<Color> cores = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.black,
    Colors.purple,
  ];
  //Texto exibido
  final String texto =
      '"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."';
  //Função para gerar cor aleatoria
  Color corAleatoria() {
    final random = Random();
    return cores[random.nextInt(cores.length)];
  }

  //Cor que irá iniciar
  Color corSorteada = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Texto colorido')),
        body: Center(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  setState(() {
                    corSorteada = corAleatoria();
                  });
                },
                child: Text(
                  'Sortear cor',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(texto, style: TextStyle(color: corSorteada)),
            ],
          ),
        ),
      ),
    );
  }
}

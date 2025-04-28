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
  int contador = 0; //Para marcar a rodada
  final random = Random();
  late int botaoCorreto; //Registrar o botao sorteado aleatoriamente
  String resultado = '';
  Color colorResultado = Colors.transparent; //Armazenar a cor do resultado
  bool jogoEncerrado = false; //Encerrar o jogo

  @override
  void initState() {
    super.initState();
    botaoCorreto = random.nextInt(3) + 1; //Numero aleatorio de 1 a 3
  }

  //Metodo para verificar se acertou ou errou o botão sorteado
  void verificarBotao(int botaoSelecionado) {
    if (jogoEncerrado) return; //Encerra caso true
    setState(() {
      if (botaoCorreto == botaoSelecionado) {
        //Venceu
        resultado = 'Você ganhou!';
        colorResultado = Colors.green;
        jogoEncerrado = true; //Finaliza o jogo
      } else if (contador >= 2) {
        //Perdeu
        resultado = 'Você perdeu!';
        colorResultado = Colors.red;
        jogoEncerrado = true;
      } else {
        //Errou
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
              //Botão 1
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed:
                    () => verificarBotao(
                      1,
                    ), //Chamando o metodo e passando o botão selecionado
                child: Text('Botão 1', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                //Botão 2
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed:
                    () => verificarBotao(
                      2,
                    ), //Chamando o metodo e passando o botão selecionado
                child: Text('Botão 2', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                //Botão 3
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed:
                    () => verificarBotao(
                      3,
                    ), //Chamando o metodo e passando o botão selecionado
                child: Text('Botão 3', style: TextStyle(color: Colors.white)),
              ),
              Text(
                resultado,
                style: TextStyle(color: colorResultado),
              ), //Texto para retornar o resultado
            ],
          ),
        ),
      ),
    );
  }
}

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
  bool isCirculo = false; //Circulo ou quadrado
  Color cor = Colors.green; //Armazena a cor atual da forma

  //Método para gerar uma cor aleatória
  void corAleatoria() {
    final random = Random(); //Cria gerador de números aleatórios
    setState(() {
      cor = Color.fromRGBO(
        random.nextInt(256), //Componente vermelho (0-255)
        random.nextInt(256), //Componente verde (0-255)
        random.nextInt(256), //Componente azul (0-255)
        1.0, //Opacidade total
      );
    });
  }

  //Método para alternar entre círculo e quadrado
  void alterarFormato() {
    setState(() {
      isCirculo = !isCirculo; //Inverte o valor booleano
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Formatos dinâmicos')), //Título do app
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //Centraliza verticalmente
            children: [
              //Linha com os botões lado a lado
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, //Centraliza horizontalmente
                children: [
                  //Botão para alternar entre formas
                  ElevatedButton(
                    onPressed: alterarFormato, //Chama método ao ser pressionado
                    child: Text(
                      isCirculo
                          ? 'Alterar para quadrado' //Texto dinâmico
                          : 'Alterar para círculo',
                    ),
                  ),
                  //Botão para mudar cor aleatoriamente
                  ElevatedButton(
                    onPressed: corAleatoria, //Chama método ao ser pressionado
                    child: Text('Cor aleatoria'),
                  ),
                ],
              ),
              //Container que exibe a forma (círculo ou quadrado)
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(20), //Margem ao redor
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ), //Borda preta
                  color: cor, //Cor da forma
                  shape:
                      isCirculo
                          ? BoxShape
                              .circle //Forma circular
                          : BoxShape.rectangle, //Forma quadrada
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Retângulos coloridos')), //Título da AppBar
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //Coloca os widgets um abaixo do outro
          children: [
            //Chamando os widgets
            quadradosSeparados(),
            quadradoAmarelo(),
            quadradoCinza(),
          ],
        ),
      ),
    );
  }

  //Widget com fundo cinza e um quadrado preto centralizado
  Widget quadradoCinza() {
    return Stack(
      children: [
        Container(
          color: Colors.grey, //Fundo cinza
          margin: EdgeInsets.all(8), //Espaçamento externo
          padding: EdgeInsets.all(8), //Espaçamento interno
          width: 100,
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, //Centraliza o quadrado preto
            children: [
              Container(
                color: Colors.black,
                width: 50,
                height: 50,
              ), //Quadrado preto
            ],
          ),
        ),
      ],
    );
  }

  //Widget com três quadrados lado a lado: vermelho, verde e azul
  Widget quadradosSeparados() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Centraliza na horizontal
      children: [
        Container(
          margin: EdgeInsets.all(8), //Espaço ao redor
          width: 50,
          height: 50,
          color: Colors.red, //Quadrado vermelho
        ),
        Container(
          margin: EdgeInsets.all(8),
          width: 50,
          height: 50,
          color: Colors.green, //Quadrado verde
        ),
        Container(
          margin: EdgeInsets.all(8),
          width: 50,
          height: 50,
          alignment: AlignmentDirectional.bottomCenter,
          color: Colors.blue, //Quadrado azul
        ),
      ],
    );
  }

  //Widget com fundo amarelo e diversos quadrados dentro
  Widget quadradoAmarelo() {
    return Container(
      color: Colors.yellow, //Fundo amarelo
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, //Alinhamento vertical
        mainAxisSize: MainAxisSize.min, //Ocupa o mínimo necessário
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: 50,
            height: 100,
            color: Colors.purple, //Retângulo roxo
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: 50,
            height: 100,
            color: Colors.cyan, //Retângulo ciano
          ),
          Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //Centraliza verticalmente
            children: [
              Container(
                margin: EdgeInsets.all(8),
                height: 50,
                width: 50,
                color: Colors.purple, //Quadrado roxo
              ),
              Container(
                margin: EdgeInsets.all(8),
                height: 50,
                width: 50,
                color: Colors.cyan, //Quadrado ciano
              ),
            ],
          ),
        ],
      ),
    );
  }
}

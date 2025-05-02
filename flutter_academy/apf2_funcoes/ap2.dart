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
  //Lista de cores para os blocos maiores
  final List<Color?> blocoMaiores = [
    Colors.grey,
    Colors.black,
    null, // Bloco sem cor de fundo
    Colors.white,
  ];

  // Lista de listas de cores para os blocos menores
  final List<List<Color>> blocoMenores = [
    [Colors.red, Colors.green, Colors.blue], //Primeiro conjunto de cores
    [Colors.cyan, Colors.purple, Colors.yellow], //Segundo conjunto de cores
    [Colors.red, Colors.yellow, Colors.blue], //Terceiro conjunto de cores
    [
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.yellow,
      Colors.lightGreenAccent, //Quarto conjunto com 4 cores
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey, //Cor de fundo do Scaffold
        appBar: AppBar(title: Text('Quadrados empilhados')), //Título da AppBar
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              //Coluna para organizar os widgets verticalmente
              children: List.generate(blocoMenores.length, (index) {
                //Gera widgets dinamicamente baseado na lista blocoMenores
                return retanguloComBlocos(
                  fundo: blocoMaiores[index], //Cor de fundo do bloco maior
                  cor: blocoMenores[index], //Cores dos blocos menores
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  //Widget que cria um retângulo com blocos menores empilhados
  Widget retanguloComBlocos({Color? fundo, required List<Color> cor}) {
    return Container(
      margin: EdgeInsets.all(8), //Espaçamento externo
      width: 100,
      height: 100,
      color: fundo, //Cor de fundo do container (pode ser nula)
      child: Stack(
        // Stack para empilhar os blocos menores
        children: List.generate(cor.length, (index) {
          //Gera blocos menores dinamicamente
          return Positioned(
            left: 8.0 * index + 8, //Posicionamento horizontal
            top: 8.0 * index + 8, //Posicionamento vertical
            child: Container(
              width: 50,
              height: 50,
              color: cor[index], // Cor do bloco menor
            ),
          );
        }),
      ),
    );
  }
}

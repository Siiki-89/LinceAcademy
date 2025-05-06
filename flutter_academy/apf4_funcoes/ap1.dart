import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //Rota inicial do aplicativo
      routes: {
        '/':
            (context) =>
                const TelaDeCores(), //Rota para a tela de listagem de cores
        '/cor':
            (context) =>
                const TelaDaCor(), //Rota para a tela de detalhes da cor
      },
    );
  }
}

//Classe que representa um item de cor com nome e valor
class CorItem {
  final String nome; //Nome da cor (ex: "Vermelho")
  final Color cor; //Valor da cor (ex: Colors.red)

  CorItem(this.nome, this.cor); //Construtor
}

//Tela que exibe a lista de cores disponíveis
class TelaDeCores extends StatelessWidget {
  const TelaDeCores({super.key});

  //Lista estática de cores disponíveis
  static final List<CorItem> cores = [
    CorItem('Vermelho', Colors.red),
    CorItem('Verde', Colors.green),
    CorItem('Amarelo', Colors.yellow),
    CorItem('Azul', Colors.blue),
    CorItem('Preto', Colors.black),
    CorItem('Roxo', Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de cores'),
      ), // Barra superior com título
      body: ListView.builder(
        //Lista rolável de itens
        itemCount: cores.length, //Quantidade de itens na lista
        itemBuilder: (context, index) {
          final corItem = cores[index]; //Obtém o item atual
          return Padding(
            padding: const EdgeInsets.all(8.0), //Espaçamento entre os botões
            child: ElevatedButton(
              onPressed: () {
                //Navega para a tela de detalhes da cor
                Navigator.pushNamed(
                  context,
                  '/cor',
                  arguments: Argumentos(
                    corItem.nome,
                    corItem.cor,
                  ), //Passa os argumentos
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  MediaQuery.of(context).size.width,
                  50,
                ), //Largura total da tela
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ), //Borda quadrada
                backgroundColor: corItem.cor, //Cor de fundo do botão
                padding: const EdgeInsets.all(20), //Espaçamento interno
              ),
              child: Text(
                corItem.nome, //Texto do botão
                style: const TextStyle(
                  color: Colors.white,
                ), //Texto branco para contraste
              ),
            ),
          );
        },
      ),
    );
  }
}

//Classe para armazenar os argumentos passados entre telas
class Argumentos {
  final String titulo; //Título a ser exibido
  final Color cor; //Cor de fundo

  Argumentos(this.titulo, this.cor); //Construtor
}

//Tela que exibe os detalhes de uma cor específica
class TelaDaCor extends StatelessWidget {
  const TelaDaCor({super.key});

  @override
  Widget build(BuildContext context) {
    //Obtém os argumentos passados na navegação
    final argumento = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return Scaffold(
      appBar: AppBar(title: Text(argumento.titulo)), //Título com o nome da cor
      backgroundColor: argumento.cor, //Cor de fundo da tela
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context), //Volta para a tela anterior
          child: const Text('Voltar para a primeira tela'),
        ),
      ),
    );
  }
}

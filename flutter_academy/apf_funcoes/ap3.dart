import 'package:flutter/material.dart';
import 'dart:math';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: MyWidget())),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

enum StatusJogo { ganhou, perdeu, jogando }

class _MyWidgetState extends State<MyWidget> {
  final random = Random();
  late int botaoCorreto;
  var clicks = 0;
  var vitorias = 0;
  var derrotas = 0;

  StatusJogo statusJogo = StatusJogo.jogando;

  // Esse método e chamado somente uma vez, ao iniciar o state
  @override
  void initState() {
    super.initState();

    // Escolher um número de 0 a 2 para identificar escolher o botão correto
    botaoCorreto = random.nextInt(3);
    statusJogo = StatusJogo.jogando;
  }

  // Tratar a tentativa do usuário
  void tentativa(int opcao) {
    setState(() {
      // Verificar se a opção escolhida esta correta
      if (opcao == botaoCorreto) {
        statusJogo = StatusJogo.ganhou;
        vitorias++;
      } else {
        // Se estiver errada, incrementa o contador de clicks
        clicks++;
      }

      // Se a quantidade de clicks for maior ou igual a 2, o usuário perdeu
      if (clicks >= 2) {
        statusJogo = StatusJogo.perdeu;
        derrotas++;
      }
    });
  }

  void reiniciarJogo() {
    setState(() {
      botaoCorreto = random.nextInt(3);
      clicks = 0;
      statusJogo = StatusJogo.jogando;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Opção aleatoria')),
      body: Center(
        child: Column(
          children: [
            Text('Vitorias: $vitorias Derrotas $derrotas'),
            estadoDoJogo(),
          ],
        ),
      ),
    );
  }

  Widget estadoDoJogo() {
    switch (statusJogo) {
      case StatusJogo.jogando:
        return jogoEmAndamento();
      case StatusJogo.ganhou:
        return telaVitoria();
      case StatusJogo.perdeu:
        return telaDerrota();
    }
  }

  Widget jogoEmAndamento() {
    return Column(
      children: [
        ElevatedButton(child: Text('A'), onPressed: () => tentativa(0)),
        ElevatedButton(child: Text('B'), onPressed: () => tentativa(1)),
        ElevatedButton(child: Text('C'), onPressed: () => tentativa(2)),
      ],
    );
  }

  Widget telaVitoria() {
    return Column(
      children: [
        Container(
          color: Colors.green,
          child: const Text('Você ganhou!', style: TextStyle(fontSize: 24)),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: reiniciarJogo,
          child: const Text('Jogar novamente'),
        ),
      ],
    );
  }

  Widget telaDerrota() {
    return Column(
      children: [
        Container(color: Colors.red, child: const Text('Você perdeu!')),
        ElevatedButton(
          onPressed: reiniciarJogo,
          child: Text('Tentar novamente'),
        ),
      ],
    );
  }
}

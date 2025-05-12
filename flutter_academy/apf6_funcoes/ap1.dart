import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'estado/estado.dart';
import 'telas/tela_formulario.dart';
import 'telas/tela_inicial.dart';
import 'telas/tela_lista.dart';

const Color corBackground = Color.fromARGB(255, 20, 31, 35);
const Color corBackgroundForm = Color.fromARGB(255, 44, 64, 74);
const Color corText = Color.fromARGB(255, 98, 144, 166);

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => EstadoListaDePessoas(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: corBackground),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const TelaInicial(),
        '/lista': (_) => const TelaLista(),
        '/formulario': (_) => const TelaFormulario(),
      },
    );
  }
}

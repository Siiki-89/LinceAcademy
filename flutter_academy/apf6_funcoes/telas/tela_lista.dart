import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../estado/estado.dart';
import '../estilo.dart';
import '../modelos/sanguineo.dart';
import 'tela_formulario.dart';

class TelaLista extends StatefulWidget {
  const TelaLista({super.key});

  @override
  State<TelaLista> createState() => _TelaListaState();
}

class _TelaListaState extends State<TelaLista> {
  String filtro = '';

  @override
  Widget build(BuildContext context) {
    final estado = Provider.of<EstadoListaDePessoas>(context);
    final pessoas = filtro.isEmpty ? estado.pessoas : estado.filtrar(filtro);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Pessoas'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/formulario'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: styleInputDecoration('Filtrar por nome'),
              onChanged: (valor) => setState(() => filtro = valor),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: pessoas.length,
                itemBuilder: (context, index) {
                  final pessoa = pessoas[index];
                  return Card(
                    color: corSanguineo(pessoa.tipoSanguineo),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pessoa.nome,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text('E-mail: ${pessoa.email}'),
                              Text('Telefone: ${pessoa.telefone}'),
                              Text('GitHub: ${pessoa.github}'),
                              Text(
                                'Tipo Sanguíneo: ${pessoa.tipoSanguineo.name}',
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 4,
                          right: 4,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit, size: 20),
                                onPressed:
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (_) =>
                                                TelaFormulario(pessoa: pessoa),
                                      ),
                                    ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, size: 20),
                                onPressed: () => estado.excluir(pessoa),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

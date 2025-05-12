import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../ap1.dart';
import '../estado/estado.dart';
import '../modelos/pessoa.dart';
import '../modelos/sanguineo.dart';
import '../estilo.dart';
import '../util/validador.dart'; // Importar o arquivo de validação

class TelaFormulario extends StatefulWidget {
  final Pessoa? pessoa;

  const TelaFormulario({super.key, this.pessoa});

  @override
  State<TelaFormulario> createState() => _TelaFormularioState();
}

class _TelaFormularioState extends State<TelaFormulario> {
  final _formKey = GlobalKey<FormState>();
  late String nome, email, telefone, github;
  late TipoSanguineo tipo;

  @override
  void initState() {
    super.initState();
    final p = widget.pessoa;
    nome = p?.nome ?? '';
    email = p?.email ?? '';
    telefone = p?.telefone ?? '';
    github = p?.github ?? '';
    tipo = p?.tipoSanguineo ?? TipoSanguineo.aPositivo;
  }

  @override
  Widget build(BuildContext context) {
    final estado = Provider.of<EstadoListaDePessoas>(context);
    return Scaffold(
      backgroundColor: corBackground,
      appBar: AppBar(title: Text('Cadastrar pessoa')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              construcaoTextField(
                texto: 'Nome',
                valorInicial: nome,
                onSaved: (v) => nome = v!,
                validator: validaNome,
              ),
              const SizedBox(height: 16),
              construcaoTextField(
                texto: 'Email',
                valorInicial: email,
                onSaved: (v) => email = v!,
                validator: validaEmail,
              ),
              const SizedBox(height: 16),
              construcaoTextField(
                texto: 'Telefone',
                valorInicial: telefone,
                onSaved: (v) => telefone = v!,
                validator: validaTelefone,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              construcaoTextField(
                texto: 'GitHub',
                valorInicial: github,
                onSaved: (v) => github = v!,
                validator: validaGit,
              ),
              const SizedBox(height: 24),
              DropdownButtonFormField<TipoSanguineo>(
                value: tipo,
                style: TextStyle(color: corText),
                decoration: styleInputDecoration(''),
                items:
                    TipoSanguineo.values
                        .map(
                          (t) =>
                              DropdownMenuItem(value: t, child: Text(t.name)),
                        )
                        .toList(),
                onChanged: (v) => setState(() => tipo = v!),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: styleButton(),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    final novaPessoa = Pessoa(
                      nome: nome,
                      email: email,
                      telefone: telefone,
                      github: github,
                      tipoSanguineo: tipo,
                    );
                    if (widget.pessoa == null) {
                      estado.incluir(novaPessoa);
                    } else {
                      estado.editar(widget.pessoa!, novaPessoa);
                    }
                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  'Salvar',
                  style: TextStyle(
                    color: corText,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget construcaoTextField({
    required String texto,
    required String valorInicial,
    required void Function(String?) onSaved,
    required String? Function(String?) validator,
    TextInputType? keyboardType,
  }) {
    return TextFormField(
      initialValue: valorInicial,
      onSaved: onSaved,
      validator: validator,
      keyboardType: keyboardType,
      cursorColor: corText,
      style: const TextStyle(color: Colors.white),
      decoration: styleInputDecoration(texto),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>(); //Chave para controlar o formulário
  final TextEditingController nomeController =
      TextEditingController(); //Controlador do campo nome
  final TextEditingController idadeController =
      TextEditingController(); //Controlador do campo idade
  bool atividade = false; //Estado do checkbox inativo

  String? nome; //Armazena o nome digitado
  int? idade; //Armazena a idade digitada
  bool? ativo; //Armazena o status (ativo/inativo)

  // Valida o campo nome
  String? validarNome(String? value) {
    if (value == null || value.isEmpty)
      return 'Digite seu nome'; //Verifica se está vazio
    if (value.length < 3)
      return 'Não pode ter menos de 3 letras'; //Verifica tamanho mínimo
    if (value[0] != value[0].toUpperCase()) {
      return 'O nome deve começar com letra maiúscula'; //Verifica primeira letra maiúscula
    }
    return null; //Retorna null se válido
  }

  // Valida o campo idade
  String? validarIdade(String? value) {
    if (value == null || value.isEmpty)
      return 'Idade não pode ser vazia'; //Verifica se está vazio
    final idade = int.tryParse(value); //Tenta converter para número
    if (idade == null)
      return 'Idade deve ser um número válido'; //Verifica conversão
    if (idade < 18)
      return 'Idade deve ser maior ou igual a 18'; //Verifica idade mínima
    return null; //Retorna null se válido
  }

  //Salva os dados do formulário se válido
  void salvarFormulario() {
    if (_formKey.currentState!.validate()) {
      //Valida o formulário
      setState(() {
        nome = nomeController.text; //Armazena o nome
        idade = int.parse(idadeController.text); //Armazena a idade
        ativo = atividade; //Armazena o status
      });
    }
  }

  @override
  void dispose() {
    nomeController.dispose(); //Libera recursos do controlador
    idadeController.dispose(); //Libera recursos do controlador
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulário básico'),
        ), //Título da AppBar
        body: Padding(
          padding: const EdgeInsets.all(20.0), //Espaçamento interno
          child: Column(
            children: [
              //Formulário principal
              Form(
                key: _formKey, //Chave do formulário
                child: Column(
                  children: [
                    //Campo de texto para nome
                    TextFormField(
                      controller: nomeController, //Controlador do campo
                      decoration: const InputDecoration(
                        labelText: 'Nome: ',
                      ), //Rótulo
                      validator: validarNome, //Função de validação
                    ),
                    //Campo de texto para idade
                    TextFormField(
                      controller: idadeController, //Controlador do campo
                      decoration: const InputDecoration(
                        labelText: 'Idade: ',
                      ), //Rótulo
                      keyboardType: TextInputType.number, //Teclado numérico
                      validator: validarIdade, //Função de validação
                    ),
                    //Checkbox para status inativo
                    Row(
                      children: [
                        Checkbox(
                          value: atividade, //Valor atual
                          onChanged: (value) {
                            setState(() {
                              atividade = value ?? false; //Atualiza estado
                            });
                          },
                        ),
                        const Text('Inativo'), //Rótulo do checkbox
                      ],
                    ),
                    //Botão para salvar
                    ElevatedButton(
                      onPressed: salvarFormulario, //Ação ao pressionar
                      child: const Text('Salvar'), //Texto do botão
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), //Espaçamento entre os elementos
              exibirPessoa(), //Exibe os dados salvos
            ],
          ),
        ),
      ),
    );
  }

  //Widget para exibir os dados salvos
  Widget exibirPessoa() {
    if (nome == null || idade == null || ativo == null)
      return const SizedBox(); //Retorna vazio se não houver dados

    return Container(
      padding: const EdgeInsets.all(16), //Espaçamento interno
      color:
          ativo!
              ? Colors.grey[300]
              : Colors.green[300], //Cor de fundo condicional
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //Alinhamento à esquerda
        children: [
          Text('Nome: $nome'), //Exibe nome
          Text('Idade: $idade'), //Exibe idade
          Text('Status: ${ativo! ? 'Inativo' : 'Ativo'}'), //Exibe status
        ],
      ),
    );
  }
}

import 'dart:math';

void main (){
  //Inicializando listas
  List<String> nomes = [
    'Ana', 'Francisco', 'Joao', 'Pedro', 'Gabriel', 
    'Rafaela', 'Marcio', 'Jose', 'Carlos', 'Patricia', 
    'Helena', 'Camila', 'Mateus', 'Gabriel', 'Maria', 
    'Samuel', 'Karina', 'Antonio', 'Daniel', 'Joel', 
    'Cristiana', 'Sebastião', 'Paula'
  ];

   List<String> sobrenomes = [
    'Silva', 'Ferreira', 'Almeida', 'Azevedo', 'Braga',
    'Barros', 'Campos', 'Cardoso', 'Teixeira', 'Costa',
    'Santos', 'Rodrigues', 'Souza', 'Alves', 'Pereira', 
    'Lima', 'Gomes', 'Ribeiro', 'Carvalho', 'Lopes', 'Barbosa'
  ];
  //Inicializando variaveis e chamando metodo numero aleatorio
  String nome = nomes[numeroAleatorio(nomes)];
  String sobrenome = sobrenomes[numeroAleatorio(sobrenomes)];

  //Imprimindo nome e sobrenome 
  print('Nome: $nome $sobrenome');
}

//Metodo para obter um número aleatorio dado o tamanho da lista
int numeroAleatorio (List<String> lista){
  final random = Random();
  return random.nextInt(lista.length);
}
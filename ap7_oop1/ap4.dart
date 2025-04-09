import 'dart:math';

class Pessoa {
  //Inicializando atributos
  late String _nome;
  late int _idade;
  late double _altura;

  //Set
  set nome(String nome)=> _nome  = nome;
  set altura(double altura)=> _altura = altura;

  //Verificando se é uma idade valida
  set idade(int idade){
    if(idade>=0){
      _idade = idade;
    } else {
      throw Exception('Precisa ser maior que 0');
    }
  } 
  //Get
  String get nome => _nome;
  double get altura => _altura;
  int get idade => _idade;

  //Imprimir pessoa com os get
  void imprimirPessoa(){
     print('Nome: $nome'
    'Idade: $idade'
    'Altura: $altura');
  }
  
}
void main(){
  // Inicializando variáveis
  final random = Random();
  Pessoa pessoa = Pessoa();

  //Atribuindo valores 
  pessoa.nome = 'Renaldo';
  pessoa.idade = random.nextInt(99) + 1;
  //Gera uma altura aleatória entre 1.0 e 2.3 e atribui à pessoa
  pessoa.altura = (random.nextDouble() * (2.3 - 1.0)) + 1.0;

  //Imprimindo informações da pessoa
  pessoa.imprimirPessoa();
}
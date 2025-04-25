import 'dart:math';

//Inicializando enum
enum GenerosMusicais {
  funkCarioca,
  funkOstentacao,
  funk150bpm,
  funkPop,
  bregaFunk,
}

void main() {
  //Inicializando variaveis e obtendo um número aleatorio correspondente ao tamanho do enum criado
  final random = Random();
  int numAleatorio = random.nextInt(GenerosMusicais.values.length);
  final generoMusical = GenerosMusicais.values[numAleatorio];

  //Verificando o retorno
  switch (generoMusical) {
    case GenerosMusicais.funkCarioca:
      print("Meu gênero musical preferido e o funk carioca");
    case GenerosMusicais.funkOstentacao:
      print("Meu gênero musical preferido e o funk ostentação");
    case GenerosMusicais.funk150bpm:
      print("Meu gênero musical preferido e o funk 150 BPM");
    case GenerosMusicais.funkPop:
      print("Meu gênero musical preferido e o funk pop");
    default:
      print("Meu gênero musical preferido e o brega funk");
  }
}
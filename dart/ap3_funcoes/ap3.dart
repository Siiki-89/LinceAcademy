import 'dart:math';

void main (){
  //Inicializando as variáveis
  final random = Random();
  final List<double> raios = List.generate(10, (index) => random.nextDouble()*100);

  //Chamando função calc area (calcular area)
  calcRaios(raios);
}

//Função calcular area e calcular perimetro
double calcArea (double raio) => pi * pow(raio, 2);

double calcPerimetro (double raio) => 2 * pi * raio;

//Calcula a area e o perimetro dos raios dentro da lista e imprimi
void calcRaios(List<double> raios){
  for(double raio in raios){
    final double area = calcArea(raio);
    final double perimetro = calcPerimetro (raio);

    
    print(
      'Raio: ${raio.toStringAsFixed(3)}, '
      'Area: ${area.toStringAsFixed(3)}, '
      'Perimetro: ${perimetro.toStringAsFixed(3)}.');
  }
}
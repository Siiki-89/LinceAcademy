import 'dart:math';

void main (){
  final random = Random();
  final List<double> raios = List.generate(10, (index) => random.nextDouble()*100);

  calcRaios(raios);
}

double calcArea (double raio) => pi * pow(2, raio);

double calcPerimetro (double raio) => 2 * pi * raio;

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
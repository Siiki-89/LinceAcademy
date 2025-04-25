import 'dart:math';

void main (){
  //Inicializando lista
  List<double> circulos = [5,8,12,7.3,18,2,25];
  //Chamando metodo calcular lista
  calcularLista(circulos);
}
//Calcular area do raio
double calcularArea(double raio) => pi * raio * raio;

//Calcular perimetro do raio
double calcularPerimetro(double raio) => 2 * pi * raio;

//Utiliza a lista como parametro e chama os metodos de calculo
void calcularLista(List<double> circulos){
  for(double circulo in circulos){
    print('Raio: $circulo, '
    'area: ${calcularArea(circulo).toStringAsFixed(2)}, '
    'perímetro: ${calcularPerimetro(circulo).toStringAsFixed(2)}');
  }
}
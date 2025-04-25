class Retangulo {
  //Inicializando atributos
  final double largura;
  final double altura;

  //Verificando se altura e largura é maior ou igual a 0
  Retangulo(this.altura, this.largura) {
    if (altura <= 0 || largura <= 0) {
      throw Exception('Dimensões inválidas, informe apenas valores positivos maiores que zero');
    }
  }
  //Calculando area do retangulo
  void calcularArea()=>print('Area do retângulo: ${altura*largura}');
}
void main(){
  Retangulo retangulo = Retangulo(5, 7.665);
  //Calculando e retornando o retangulo
  retangulo.calcularArea();
}
import 'dart:math';

abstract class Forma{
    double calcularArea();
}
class Retangulo implements Forma{
    double base;
    double altura;
    Retangulo(this.base, this.altura){
        if(base <= 0 || altura <= 0 ){
            throw Exception("Dimensões inválidas, informe apenas valores positivos maiores que zero");
        }
    }
    @override
    double calcularArea() {
        return base * altura;
  }
}

void main(){
    final random = Random();

    final double base = random.nextDouble() * 99;
    final double altura = random.nextDouble() * 99;
    

    try{
        final retangulo = Retangulo(base, altura);
        print('Area do retângulo: ${retangulo.calcularArea().toStringAsFixed(3)}');
    } catch (e){
        print(e);
    }
}
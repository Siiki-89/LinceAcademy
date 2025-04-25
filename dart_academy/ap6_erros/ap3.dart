import 'dart:math';
//Criando classe abstrata 
abstract class Forma{
    double calcularArea();
}

//Criando classe 'Retangulo'
class Retangulo implements Forma{
    //Inicializando atributos
    double base;
    double altura;

    //Forçando entrada dos atribudos ao instanciar e valida
    Retangulo(this.base, this.altura){
        if(base <= 0 || altura <= 0 ){
            throw Exception("Dimensões inválidas, informe apenas valores positivos maiores que zero");
        }
    }
    //Calcula e retorna a área do retângulo
    @override
    double calcularArea() {
        return base * altura;
  }
}

void main(){
    //Inicializando variaveis
    final random = Random();

    final double base = random.nextDouble() * 99;
    final double altura = random.nextDouble() * 99;
    
    //obtendo a area do retângulo
    try{
        final retangulo = Retangulo(base, altura);
        print('Area do retângulo: ${retangulo.calcularArea().toStringAsFixed(3)}');
    } catch (e){
        print(e);
    }
}
import 'dart:math';
//Classe abstrada Calculadora
abstract class Calculadora{
  //Método para retornar o dobro do valor
  static void dobro(int num) => print('O dobro do número $num é: ${num * 2}');
}
void main(){
  //Gerando numero aleatorio
  final random = Random();
  final valor = random.nextInt(100);

  //Chamando método estático para calcular o dobro do valor
  Calculadora.dobro(valor);
}
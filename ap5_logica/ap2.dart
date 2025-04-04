import 'dart:math';

void main(){

  //Chamando Random e inicicializando lista com 5 números que possam corresponder ao alfabeto
  final random = Random();
  List<int> numAleatorio = List.generate(5,(index) => random.nextInt(26));

  //Chamando função dentro do forEach
  numAleatorio.forEach((num) => print('$num --> ${letraAlfabeto(num)}'));

}
//Função que converte o número para uma letra que corresponde a ele (Tabela ASCII)
String letraAlfabeto (int num)=> num >=1 && num <=26 ? String.fromCharCode(64+num):''; 

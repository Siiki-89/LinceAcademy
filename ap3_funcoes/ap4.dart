import 'dart:math';

void main(){
  //Inicializando as variáveis
  final random = Random();
  List<int> decimal = List.generate(15, (index)=> random.nextInt(5000));

  //Chama metodo imprimir dados
  imprimirDados(decimal);
}

//Função para conversão utilizando toRadixString
String converterBinario (int decimal) => decimal.toRadixString(2);

String converterOctal (int decimal) => decimal.toRadixString(8);

String converterHexadecimal (int decimal) => decimal.toRadixString(16);

//Função imprimir dados
void imprimirDados (List<int> decimais){
  for(int decimal in decimais){
    print(
      'Decimal : $decimal, '
      'Binario: ${converterBinario(decimal)}, '
      'Octal: ${converterOctal(decimal)}, '
      'Hexadecimal: ${converterHexadecimal(decimal)}.');
  }
}
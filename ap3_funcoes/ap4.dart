import 'dart:math';

void main(){
  final random = Random();
  List<int> decimal = List.generate(15, (index)=> random.nextInt(5000));

  imprimirDados(decimal);
}

String converterBinario (int decimal) => decimal.toRadixString(2);

String converterOctal (int decimal) => decimal.toRadixString(8);

String convertarHexadecimal (int decimal) => decimal.toRadixString(16);

void imprimirDados (List<int> decimais){
  for(int decimal in decimais){
    print(
      'Decimal : $decimal, '
      'Binario: ${converterBinario(decimal)}, '
      'Octal: ${converterOctal(decimal)}, '
      'Hexadecimal: ${convertarHexadecimal(decimal)}.');
  }
}

void main (){
  //Inicilizando lista e deixando em ordem crescente 
  List<int> valores = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021]..sort();

  //Chamando metodo converterLista
  converterLista(valores);

}

//Função para conversão utilizando toRadixString
String converterBinario (int decimal) => decimal.toRadixString(2);

String converterOctal (int decimal) => decimal.toRadixString(8);

String converterHexadecimal (int decimal) => decimal.toRadixString(16);

//Converter a lista chamando os metodos de conversão
void converterLista(List<int> lista){
  for(int valor in lista){
    print('decimal: $valor, '
    'binário: ${converterBinario(valor)}, '
    'octal: ${converterOctal(valor)}, '
    'hexadecimal: ${converterHexadecimal(valor)}');
  }
}
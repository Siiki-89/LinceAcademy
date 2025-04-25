void main() {
  //Chamando função para conversão
  intParaString("teste");
}
//Converter de String para int e tratando erros e exceções
void intParaString(String vlr){
  try {
    int.parse(vlr);
    print('Número digitado: $vlr');
  } catch(e){
    print ("Entrada invalida. Digite apenas números inteiros.");
  }
}
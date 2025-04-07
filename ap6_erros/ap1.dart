void main() {
  intParaString("teste");
}

void intParaString(String vlr){
  try {
    int.parse(vlr);
    print('Número digitado: $vlr');
  } catch(e){
    print ("Entrada invalida. Digite apenas números inteiros.");
  }
}
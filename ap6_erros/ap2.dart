void main (){
  numeroPar(2);
}
void numeroPar(int vlr){
  try{
    if(vlr.isOdd){
      throw Exception('Entrada inválida. Insira apenas números pares.');
    }
    print("Entrada correta, você inseriu um número par.");
  } catch (e){
    print(e);
  }
}

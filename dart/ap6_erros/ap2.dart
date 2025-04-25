void main (){
  //Chamando função para verificar se é um numero par
  numeroPar(2);
}

//Função para verificar se é numero par e tratando erros e exceções
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

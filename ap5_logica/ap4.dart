void main(){
  //Inicializa variavéis e chama função contarNome
  List<String> listaNomes = [
    'joão',
    'Maria',
    'Pedro',
    'Ana',
    'Joao',
    'Maria',
    'Fernanda',
    'Carlos',
    'Maria'
    ];

  String nome = 'Maria';
  int quantidade = contarNome(listaNomes, nome);

  //Imprime a quantidade em que o nome foi repetido 
  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } else {
    print('O nome nao foi encontrado');
  }
}

//Função para contar quantas vezes o nome repete na lista
int contarNome(List<String> lista, String nome){
  int soma = 0;
  //Poderia usar o where também
  for(String nomeNaLista in lista){
    if(nomeNaLista == nome){
      soma++;
    }
  }
  return soma;
}
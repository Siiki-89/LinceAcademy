void main(){
  //Inicializando Map
  Map<String,int?> pessoas ={
  'Nelson': null,
  'Jane': null,
  'Jack': 16,
  'Rupert': 37,
  'Andy': 13,
  'Kim': 27,
  'Robert':31};

  //Chamando função imprimir pessoas
  imprimirPessoas(pessoas);

}

//Obter chave e valor dentro da lista e retornar 'Idade não informada' caso o valor == null
void imprimirPessoas (Map<String,int?> pessoas){
  pessoas.forEach((nome, idade){
    print('$nome - ${idade ?? 'Idade não informada'}');
    }); 
}


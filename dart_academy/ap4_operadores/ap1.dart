void main (){
  //Inicializando variável
  List<int> anos = [1988, 1993, 2000, 2016, 2100, 2300];

  //Chamando função
  eBissexto(anos);
}

void eBissexto(List<int> anos ){
  //Inicializando variáveis
  List<int> bissexto = [];
  List<int> naoBissexto = [];

  //Checando se é bissexto ou não
  for (int ano in anos){
    if(ano % 4 == 0 &&(ano % 100 != 0 || ano % 400 == 0)){
      bissexto.add(ano);
    } else {
      naoBissexto.add(ano);
    }
  }

  //imprime os dados
  print('Anos bissextos: ${bissexto.join(', ')}');
  print('Anos não bissextos: ${naoBissexto.join(', ')}');
}
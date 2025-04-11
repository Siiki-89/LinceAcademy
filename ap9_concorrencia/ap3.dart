void main() async {
  print('Iniciando lançamento');
  //Chamando lancamento
  await lancamento(3);

  print('Foguete lançado!');
}
Future<void> lancamento (int duracao) async {
  //Parametro de comparação
  while(0<duracao){
    //Contagem regressiva
    print(duracao);
    //Esperar um segundo
    await Future.delayed(Duration(seconds: 1));
    duracao--;
  }
}
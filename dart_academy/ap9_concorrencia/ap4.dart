void main() async{
  print('Inicializando a busca dos dados');
  print('Buscando dados, aguarde');
  //Chamando metodo buscar dados
  await buscarDados();
  print('Dados buscados com sucesso');
}
Future<void> buscarDados () async{
  //Simular a busca
  await Future.delayed(Duration(seconds: 3));
}
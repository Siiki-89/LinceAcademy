void main() async{
  print('Inicializando a busca dos dados');
  print('Buscando dados, aguarde');
  await buscarDados();
  print('Dados buscados com sucesso');
}
Future<void> buscarDados () async{
  await Future.delayed(Duration(seconds: 3));
}
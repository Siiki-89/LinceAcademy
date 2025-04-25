Future<void> main() async {
  //Inicializando lista com urls
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];
  //Chamando metodo baixar imagens
  await baixarImagens(urls);
}

Future<void> baixarImagem(String url) async {
  //Utilizando o await para esperar o retorna da Future e delayed para simular a demora da conclusão
  await Future.delayed(Duration(seconds: 2));

  print('Imagem $url baixada com sucesso!');
}

Future<void> baixarImagens(List<String> urls) async{
  print('Baixando imagens...');
  //Para percorrer lista de urls, utiliza-se o await para esperar baixar uma imagem por uma
  for(String url in urls){
    await baixarImagem(url);
  }
  print('Download concluído');
}
abstract class Arquivo{
  void abrir();
}
class ArquivoTexto implements Arquivo{
  final String nome;

  ArquivoTexto(this.nome);

  @override
  void abrir() {
    try{
      if (nome.isEmpty) {
        throw Exception('Nome do arquivo está vazio.');
      }
      print('$nome aberto');
    } catch (e){
      throw Exception('Erro ao abrir o arquivo $nome');
    }
  }
}

void main(){
  try {
    String arquivoNome = "";

    if(arquivoNome == null){
      throw Exception('Entrada invalida. Digite um nome valido.');
    }
    
    ArquivoTexto arquivo = ArquivoTexto(arquivoNome);
    try {
      arquivo.abrir();
    } catch (e){
      rethrow;
    }
  } catch (e){
    print(e);
  } finally {
    print("Fim do programa");
  }
  
}
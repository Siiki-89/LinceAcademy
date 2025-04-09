//Criando classe abstrata 
abstract class Arquivo{
  void abrir();
}
//Criando classe 'ArquivoTexto'
class ArquivoTexto implements Arquivo{
  //Inicializando atributos
  final String nome;

  //Forçando entrada dos atribudos ao instanciar e validando
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
    //Inicializando variavel
    String arquivoNome = "";

    //Verifica se está vazia
    if(arquivoNome.isEmpty){
      throw Exception('Entrada invalida. Digite um nome valido.');
    }
    
    ArquivoTexto arquivo = ArquivoTexto(arquivoNome);

    //Tenta abrir o arquivo
    try {
      arquivo.abrir();
    } catch (e){
      //Relança qualquer exceção
      rethrow;
    }
  } catch (e){
    print(e);
  } finally {
    print("Fim do programa");
  }
  
}
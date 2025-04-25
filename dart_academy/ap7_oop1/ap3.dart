class Produto {
  //Inicializando atributos
  String nome;
  double preco;

  //Criando construtor
  Produto(this.nome, this.preco);

  //Metodo para calcular o preço do produto com desconto
  void desconto (vlrPorcento)=>
  print('Novo preço do produto $nome (com desconto) ${(vlrPorcento/100)*preco}');

}
void main(){
  //Inicialiando lista com a classe Produto
  List<Produto> listaProduto = [
    Produto('Televisão', 1000),
    Produto('Sapato', 300),
    Produto('Computador', 4555.94)
  ];

  //Percorrendo a lista e aplicando o desconto chamando a função desconto
  listaProduto.forEach((produto) => produto.desconto(50));
}
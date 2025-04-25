void main () {
  //Inicializando variáveis
  final double valorProduto = 705;
  final double valorPago = 435;  

  //Imprimindo resultados
  print(
    'O produto custava $valorProduto,'
    'foi vendido por $valorPago.'
    'O desconto dado foi ${calcularDesconto(valorProduto, valorPago).toStringAsFixed(2)}%'
  );

}

//Calculando desconto recebido em porcentagem
double calcularDesconto (double valorProduto, double valorPago) => ((valorProduto - valorPago)/valorProduto) * 100;
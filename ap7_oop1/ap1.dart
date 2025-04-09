class ContaBancaria {
  //Inicializando atributos
  final String nome = 'Alexandre';
  double saldo = 0;

  //Verificar o saldo da conta atual
  void verificarSaldo ()=>print('Saldo atual: $saldo');

  //Realiza um saque da conta, se houver saldo suficiente
  void sacar (double vlrSaque){
    if(vlrSaque>saldo){
      throw Exception('Saldo insuficiente');
    } else {
      saldo-=vlrSaque;
      print('Saque concluido');
      verificarSaldo();
    }
  }
  //Depositar valor
  void depositar (double vlrDeposito){
    saldo+=vlrDeposito;
    print('Deposito concluido');
    verificarSaldo();
  }
}
void main(){
  final ContaBancaria contaBancaria = ContaBancaria();

  //Chamando metodo depositar e inserindo um valor na conta
  contaBancaria.depositar(500);

  //Chamando metodo sacar encapsulado em try catch para não parar o programa em caso de erro
  try{
    contaBancaria.sacar(501);
  } catch (e){
    print(e);
  }
}
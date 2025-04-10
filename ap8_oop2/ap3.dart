//Compartamento para ligar
abstract class Ligar {
  void ligar();
}
//Comportamento para desligar
abstract class Desligar {
  void desligar();
}
//Classe veiculo que implementa os comportamentos ligar e desligar
class Veiculo implements Ligar, Desligar{
  @override
  void ligar() {
    print('O veiculo está ligado');
  }
  @override
  void desligar() {
    print('O veiculo está desligado');
  }
}
void main(){
  //Inicializando e chamando os metodos
  final veiculo = Veiculo();
  veiculo.ligar();
  veiculo.desligar();
}
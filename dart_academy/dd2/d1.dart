// NAO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTACAO RESTANTE ABAIXO DESSA LINHA
// -------------------------------------------------------------

// ...
//Classe abstrata que define a comunicação
abstract class MeioDeComunicacao {
  void fazerLigacao(String numero);
}
//Implementações
//Telefone
class Telefone implements MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[TELEFONE] Ligando para (47) 99876-5432...');
  }
}
//Celular
class Celular implements MeioDeComunicacao{
  @override
  void fazerLigacao(String numero) {
    print('[CELULAR] Ligando para (47) 99876-5432...');
  }
}
//Orelhao
class Orelhao implements MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[ORELHÃO] Ligando para (47) 99876-5432...');
  }
}
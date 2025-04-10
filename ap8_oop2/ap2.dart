abstract class Animal {
  //Metodo comer
  void comer() {
    print('O animal está comendo');
  }

  //Metodo beber
  void beber() {
    print('O animal está bebendo');
  }
}

//Criando classe que herda Animal
class Cachorro extends Animal {
  void latir() {
    print('O cachorro está latindo');
  }
}

void main() {
  Cachorro cachorro = Cachorro();
  //Chamando metodo da classe
  cachorro.beber;
  cachorro.comer;
  cachorro.latir;
}
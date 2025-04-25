import 'dart:math' as math;

void main() {
  final comparador = ComparadorFormasGeometricas();

  //Definindo as formas geométricas
  final formas = [
    Circulo('Círculo A', 3),
    Circulo('Círculo B', 8),
    Retangulo('Retângulo A', 4, 3),
    Retangulo('Retângulo B', 19, 11),
    Quadrado('Quadrado A', 6),
    TrianguloEquilatero('Triângulo Equilátero A', 5),
    TrianguloRetangulo('Triângulo Retângulo A', 3, 4),
    PentagonoRegular('Pentágono Regular A', 4),
    HexagonoRegular('Hexágono Regular A', 7),
  ];

  final maiorArea = comparador.formaDeMaiorArea(formas);
  final maiorPerimetro = comparador.formaDeMaiorPerimetro(formas);

  print(
    'A maior área é ${maiorArea.area.toStringAsFixed(2)} e pertence a ${maiorArea.nome}',
  );
  print(
    'O maior perímetro é ${maiorPerimetro.perimetro.toStringAsFixed(2)} e pertence a ${maiorPerimetro.nome}',
  );
}

//Classe base FormaGeometrica com herança
abstract class FormaGeometrica {
  FormaGeometrica(this.nome);

  final String nome;

  double get area;
  double get perimetro;
}

/// Representa a forma geometrica "círculo"
class Circulo extends FormaGeometrica {
  /// Construtor padrao, recebe o [raio] do círculo.
  Circulo(String nome, this.raio) : super(nome);

  final double raio;

  /// Retorna a area desse círculo
  @override
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perímetro desse círculo
  @override
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retângulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo extends FormaGeometrica {
  Retangulo(String nome, this.altura, this.largura) : super(nome);

  final double altura;
  final double largura;

  /// Retorna a area desse círculo
  @override
  double get area => altura * largura;

  /// Retorna o perímetro desse círculo
  @override
  double get perimetro => 2 * (altura + largura);
}

/// Representa a forma geometrica "quadrado", que e um formato especial de
/// retângulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado extends FormaGeometrica {
  Quadrado(String nome, this.lado) : super(nome);

  final double lado;

  /// Retorna a area desse quadrado
  @override
  double get area => lado * lado;

  /// Retorna o perímetro desse quadrado
  @override
  double get perimetro => lado * 4;
}

//Forma geométrica Triângulo Equilátero
class TrianguloEquilatero extends FormaGeometrica {
  TrianguloEquilatero(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double get area => (math.sqrt(3) / 4) * math.pow(lado, 2);

  @override
  double get perimetro => lado * 3;
}

//Forma geométrica Triângulo Retângulo
class TrianguloRetangulo extends FormaGeometrica {
  TrianguloRetangulo(String nome, this.base, this.altura) : super(nome);

  final double base;
  final double altura;

  @override
  double get area => (base * altura) / 2;

  @override
  double get perimetro {
    final hipotenusa = math.sqrt(math.pow(base, 2) + math.pow(altura, 2));
    return base + altura + hipotenusa;
  }
}

//Forma geométrica Pentágono Regular
class PentagonoRegular extends FormaGeometrica {
  PentagonoRegular(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double get area {
    final apotema = lado / (2 * math.tan(math.pi / 5));
    return (5 * lado * apotema) / 2;
  }

  @override
  double get perimetro => lado * 5;
}

//Forma geométrica Hexágono Regular
class HexagonoRegular extends FormaGeometrica {
  HexagonoRegular(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double get area => (3 * math.sqrt(3) / 2) * math.pow(lado, 2);

  @override
  double get perimetro => lado * 6;
}

//Comparador de formas geométricas com herança e polimorfismo
class ComparadorFormasGeometricas {
  FormaGeometrica formaDeMaiorArea(List<FormaGeometrica> formas) {
    return formas.reduce((a, b) => a.area > b.area ? a : b);
  }

  FormaGeometrica formaDeMaiorPerimetro(List<FormaGeometrica> formas) {
    return formas.reduce((a, b) => a.perimetro > b.perimetro ? a : b);
  }
}
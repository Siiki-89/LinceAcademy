# Orientação a Objetos em Dart

## Quais são os principais conceitos da orientação a objetos?

- **Classe**: estrutura que define o comportamento (métodos) e o estado (atributos) de um objeto.
- **Objeto**: instância concreta de uma classe.
- **Encapsulamento**: ocultar detalhes internos e expor apenas o necessário.
- **Herança**: permite que uma classe herde comportamentos e atributos de outra.
- **Polimorfismo**: objetos podem se comportar de diferentes formas através de uma mesma interface.

---

## Quais as vantagens de usar orientação a objetos em comparação com outras formas de programação?

- Organização e reutilização de código
- Redução de duplicidade
- Facilita manutenção e testes
- Maior clareza e modularização

---

## O que é uma 'classe' e como ela se relaciona com 'objetos'?

Uma **classe** é um molde. Um **objeto** é uma instância desse molde. Exemplo: `Pessoa` é a classe, `joao` é um objeto do tipo `Pessoa`.

---

## O que são 'métodos' e como eles funcionam dentro de uma classe?

São funções definidas dentro de uma classe que descrevem comportamentos do objeto. Exemplo:

```dart
class Pessoa {
  void falar() {
    print('Olá!');
  }
}
```

---

## Como posso acessar os métodos de um objeto em Dart?

Usando o operador ponto (`.`):

```dart
var pessoa = Pessoa();
pessoa.falar();
```

---

## Qual a diferença entre atributos 'públicos' e 'privados'?

- **Públicos**: podem ser acessados de fora da classe.
- **Privados**: começam com `_` e só podem ser acessados dentro do mesmo arquivo.

```dart
class Conta {
  double _saldo = 0; // privado
  double get saldo => _saldo; // acesso controlado
}
```

---

## Qual a diferença entre um construtor padrão e um construtor nomeado?

- **Construtor padrão**: é o principal da classe.
- **Construtor nomeado**: permite criar múltiplas formas de construir objetos.

```dart
class Pessoa {
  Pessoa(this.nome);
  Pessoa.vazia() : nome = '';
  String nome;
}
```

---

## O que são 'factories' em Dart e quando devo usá-las?

Factory é um tipo especial de construtor que pode retornar uma nova instância ou reutilizar uma existente.

```dart
class Pessoa {
  factory Pessoa.singleton() {
    return _instancia ??= Pessoa._interno();
  }
  static Pessoa? _instancia;
  Pessoa._interno();
}
```

Use `factory` para:
- Criar singletons
- Retornar subclasses
- Adicionar lógica na construção do objeto

---

## Dicas de organização do meu projeto usando classes

- Agrupe classes por funcionalidade em pastas específicas
- Evite classes gigantes (SRP - Princípio da Responsabilidade Única)
- Separe modelo (dados), lógica e visualização (caso use interfaces)
- Nomeie com clareza (ex: `UsuarioService`, `ProdutoModel`)

---

## Como identificar quando usar classes em Dart e qual a importância?

Use classes quando:
- Há entidades com comportamento próprio (ex: Cliente, Pedido)
- Deseja reutilizar código com herança
- Precisa encapsular dados e lógica

A importância está em tornar seu código mais escalável, organizado e fácil de manter.
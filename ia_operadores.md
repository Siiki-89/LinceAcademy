• O que acontece se eu comparar valores de tipos diferentes usando operadores relacionais em Dart?
Se os tipos forem incompatíveis, Dart lança um erro em tempo de execução. Por exemplo:

dart
Copiar
Editar
print(5 < '5'); // erro
Evite isso com verificações de tipo antes de comparar.

• Qual a diferença entre os operadores de divisão / e ~/?
/ → divisão real, retorna double.

~/ → divisão inteira, retorna int.

dart
Copiar
Editar
print(5 / 2);  // 2.5
print(5 ~/ 2); // 2
• Como verifico se uma variável é de um determinado tipo em Dart?
Use o operador is:

dart
Copiar
Editar
var x = 10;
print(x is int); // true
print(x is String); // false
• Qual a função do operador ? em testes de tipo?
É usado com is para negar o tipo:

dart
Copiar
Editar
print(x is! String); // true → "x não é String"
• Quando usar os operadores de valores opcionais e requeridos em uma função Dart?
Use required para garantir que parâmetros nomeados sejam obrigatórios.

Use valores opcionais quando o parâmetro não for essencial.

dart
Copiar
Editar
void exemplo({required String nome, int idade = 18}) { ... }
• Quais são os operadores de atribuição compostos e como eles funcionam?
Eles combinam operação e atribuição:

dart
Copiar
Editar
a += 2;  // a = a + 2
a -= 1;  // a = a - 1
a *= 3;  // a = a * 3
a ~/= 2; // a = a ~/ 2
a /= 2;  // a = a / 2
a %= 3;  // a = a % 3
a ??= 5; // se a for null, atribui 5
• Como uso os operadores && e || para combinar condições?
&&: E lógico → só é true se ambas as condições forem verdadeiras.

||: OU lógico → é true se uma ou ambas forem verdadeiras.

dart
Copiar
Editar
if (idade > 18 && temCarteira) { ... }
if (nome == 'Ana' || nome == 'João') { ... }
• Qual a diferença entre usar if-else e expressões condicionais?
if-else é uma estrutura de controle.

Expressão condicional (ternário ? :) é mais curta, mas só para casos simples.

dart
Copiar
Editar
// if-else
if (idade >= 18) {
  print('Adulto');
} else {
  print('Menor');
}

// ternário
print(idade >= 18 ? 'Adulto' : 'Menor');
• Em quais situações a notação em cascata (..) pode tornar o código mais legível?
Quando você quer encadear várias operações no mesmo objeto sem reescrevê-lo:

dart
Copiar
Editar
var buffer = StringBuffer()
  ..write('Olá')
  ..write(' Mundo')
  ..write('!');
• Qual a diferença entre usar a notação em cascata e chamar métodos separadamente?
Sem cascata:

dart
Copiar
Editar
var pessoa = Pessoa();
pessoa.setNome('Ana');
pessoa.setIdade(25);
Com cascata:

dart
Copiar
Editar
var pessoa = Pessoa()
  ..setNome('Ana')
  ..setIdade(25);
Mais compacto e fácil de ler.

• Como a notação em cascata pode ser usada para modificar um objeto após realizar testes de tipo?
dart
Copiar
Editar
void configurar(obj) {
  if (obj is Pessoa) {
    obj
      ..setNome('Carlos')
      ..setIdade(30);
  }
}
• Traga a documentação dos operadores
A documentação oficial está aqui (recomendo muito a leitura!): 📚 https://dart.dev/language/operators

• Traga exemplos de mau uso do ternário
Mau uso:

dart
Copiar
Editar
print(condicao ? outraCondicao ? 'A' : 'B' : 'C'); // difícil de ler
Melhor usar if-else:

dart
Copiar
Editar
if (condicao) {
  if (outraCondicao) {
    print('A');
  } else {
    print('B');
  }
} else {
  print('C');
}
• Como evitar problemas com operadores lógicos?
Sempre valide null antes de usar atributos:

dart
Copiar
Editar
if (usuario != null && usuario.ativo) { ... }
Use ?? para valores padrão:

dart
Copiar
Editar
var nome = entrada ?? 'Visitante';
Use parênteses para clareza:

dart
Copiar
Editar
if ((x > 0 && y > 0) || z > 10) { ... }

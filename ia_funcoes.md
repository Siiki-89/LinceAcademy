• Quais cuidados devo ter ao criar funções em Dart?
Clareza no nome: nomes devem indicar o que a função faz.

Tamanho: mantenha funções curtas e com uma única responsabilidade.

Evite efeitos colaterais: funções devem idealmente depender apenas dos parâmetros passados e não modificar estados globais.

Tratamento de erros: prever possíveis exceções e tratá-las quando necessário.

Evite duplicação: se há código repetido, extraia para funções reutilizáveis.

• Posso chamar minha função dentro dela mesma?
Sim! Isso se chama recursão. Muito usado para resolver problemas como fatorial, busca em árvores etc.

dart
Copiar
Editar
int fatorial(int n) {
  if (n <= 1) return 1;
  return n * fatorial(n - 1);
}
• Existe limite de parâmetros a serem recebidos em uma função?
Tecnicamente, não há um limite explícito, mas boas práticas recomendam no máximo 3 a 5 parâmetros. Se houver muitos, considere:

Usar parâmetros nomeados

Agrupar os dados em uma classe ou estrutura

• É recomendado usar dynamic nos parâmetros de uma função?
Evite sempre que possível. O uso de dynamic perde o benefício da tipagem segura. Prefira usar tipos específicos, ou genéricos se precisar de flexibilidade.

dart
Copiar
Editar
// Ruim
void imprimir(dynamic valor) {
  print(valor);
}

// Melhor
void imprimir(String valor) {
  print(valor);
}
• Quando usar os operadores de valores opcionais e valores requeridos em uma função Dart?
Dart permite parâmetros posicionais opcionais (entre colchetes []) e nomeados (entre chaves {}).

Use required para nomeados obrigatórios.

Use [] ou {} com valor padrão para opcionais.

dart
Copiar
Editar
void saudacao(String nome, {int idade = 18}) {
  print('Olá $nome, idade: $idade');
}

// ou com parâmetro obrigatório nomeado
void cadastro({required String nome, required int idade}) {
  print('$nome, $idade anos');
}
• O que são parâmetros nomeados em uma função?
Parâmetros passados com chave: valor, úteis para clareza e flexibilidade:

dart
Copiar
Editar
void criarUsuario({required String nome, int idade = 18}) {
  print('$nome - $idade');
}

criarUsuario(nome: 'Ana'); // idade usa o valor padrão
• Quais métodos existem para variáveis do tipo Function em Dart?
Funções em Dart são objetos de primeira classe, então você pode:

Atribuí-las a variáveis

Passá-las como argumento

Chamá-las com ()

Usar Function.apply para chamada dinâmica

dart
Copiar
Editar
void ola() => print('Oi');

void executa(Function fn) {
  fn(); // chama a função
}

executa(ola);
• Diferença entre olaMundo e olaMundo()?
olaMundo: referência à função (sem executar)

olaMundo(): executa a função

dart
Copiar
Editar
void olaMundo() => print('Olá Mundo');

var f = olaMundo; // atribuição sem execução
f(); // executa depois
• Exemplos de função tratando strings com seus diferentes métodos
dart
Copiar
Editar
void tratarTexto(String texto) {
  print(texto.toUpperCase());
  print(texto.toLowerCase());
  print(texto.trim()); // remove espaços
  print(texto.contains('Dart'));
  print(texto.replaceAll('a', '@'));
  print(texto.split(' ')); // transforma em lista
}

tratarTexto('  Olá Dart! ');
• Exemplos de mau uso de funções
Funções gigantes com várias responsabilidades

Parâmetros demais e não nomeados

Uso exagerado de dynamic

Não reutilizar código

dart
Copiar
Editar
void cadastro(String n, int i, String e, bool a, int t, bool m, double s, ...) {
  // função sem clareza, muitos parâmetros
}
• Como organizar minhas funções no código?
Funções auxiliares podem ficar no topo ou final do arquivo.

Para projetos maiores, use arquivos separados (ex: utils.dart, services.dart)

Prefira organização por responsabilidade e módulo

Use comentários e boas práticas de nomeação

dart
Copiar
Editar
// Em utils.dart
String formatarNome(String nome) => nome.trim().toUpperCase();

// Em main.dart
import 'utils.dart';

void main() {
  print(formatarNome("  Ana  "));
}

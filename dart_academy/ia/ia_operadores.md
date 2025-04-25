# Operadores e Condições em Dart

## O que acontece se eu comparar valores de tipos diferentes usando operadores relacionais em Dart?

Dart pode lançar erro em tempo de execução ao comparar tipos incompatíveis com operadores relacionais (`<`, `>`, `<=`, `>=`). É importante garantir que os tipos sejam compatíveis antes da comparação.

---

## Qual a diferença entre os operadores de divisão `/` e `~/`?

- `/`: retorna um `double` com o resultado da divisão.
- `~/`: retorna um `int`, descartando a parte decimal (divisão inteira).

---

## Como verifico se uma variável é de um determinado tipo em Dart?

Use o operador `is`:

```dart
if (variavel is String) {
  print('É uma string');
}
```

---

## Qual a função do operador `?` em testes de tipo?

Indica que o valor pode ser `null`. Exemplo:

```dart
String? nome; // Pode conter null
```

Também é usado com `?.` para chamadas seguras:

```dart
objeto?.metodo();
```

---

## Quando usar os operadores de valores opcionais e valores requeridos em uma função Dart?

- `[]`: parâmetros posicionais opcionais  
- `{}` com `required`: parâmetros nomeados obrigatórios  
- `{}` com valor padrão: parâmetros nomeados opcionais

---

## Quais são os operadores de atribuição compostos e como eles funcionam?

- `+=`, `-=`, `*=`, `/=`, `~/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=`  
Eles combinam uma operação com uma atribuição. Exemplo:

```dart
int a = 5;
a += 3; // Equivale a: a = a + 3;
```

---

## Como uso os operadores `&&` e `||` para combinar condições?

- `&&`: E lógico (ambas as condições devem ser verdadeiras)
- `||`: OU lógico (basta uma condição ser verdadeira)

```dart
if (a > 0 && b < 10) { ... }
if (nome == '' || nome == null) { ... }
```

---

## Qual a diferença entre usar `if-else` e expressões condicionais?

- `if-else`: estrutura tradicional, usada para múltiplas instruções
- Expressões condicionais (`condição ? true : false`): para atribuições rápidas ou retorno simples

```dart
var resultado = idade >= 18 ? 'Maior' : 'Menor';
```

---

## Em quais situações a notação em cascata pode tornar o código mais legível?

Quando você deseja aplicar várias operações em sequência no mesmo objeto sem precisar reatribuir ou reescrever o nome do objeto a cada linha.

---

## Qual a diferença entre usar a notação em cascata e chamar métodos separadamente?

- **Separadamente**:

```dart
obj.setX(10);
obj.setY(20);
```

- **Com cascata (`..`)**:

```dart
obj
  ..setX(10)
  ..setY(20);
```

Cascata evita repetição do nome do objeto.

---

## Como a notação em cascata pode ser usada para modificar um objeto após realizar testes de tipo?

```dart
if (objeto is Pessoa) {
  (objeto as Pessoa)
    ..nome = 'João'
    ..idade = 30;
}
```

---

## Traga a documentação dos operadores

Disponível em:  
[Dart Operators - Language Tour](https://dart.dev/language/operators)  
[Atribuições e operadores compostos](https://dart.dev/language/assignment-operators)  

---

## Traga exemplos de mau uso do ternário

- Ternário aninhado dificulta a leitura:

```dart
var resultado = cond1 ? 'A' : cond2 ? 'B' : cond3 ? 'C' : 'D'; // Confuso
```

- Usar ternário para executar funções com efeitos colaterais:

```dart
condicao ? executar1() : executar2(); // Difícil de manter
```

---

## Como evitar problemas com operadores lógicos

- Sempre verifique se variáveis podem ser `null` antes de acessar propriedades
- Use `()` para controlar a ordem das condições
- Evite expressões muito longas em uma única linha

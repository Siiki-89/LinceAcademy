# Erros e Exceções em Dart

## Qual a diferença entre um erro e uma exceção em Dart?

- **Erro**: problema grave geralmente causado por falhas no ambiente de execução (ex: `OutOfMemoryError`, `StackOverflowError`).
- **Exceção**: situação inesperada, mas recuperável (ex: `FormatException`, `HttpException`).

---

## Em quais situações devo esperar encontrar um erro, e em quais devo esperar uma exceção?

- **Erro**: problemas críticos como overflow de pilha ou falhas do sistema.
- **Exceção**: erros de lógica, dados inválidos ou falhas esperadas em tempo de execução.

---

## O que fazem os blocos `try`, `catch` e `finally` em Dart?

- `try`: envolve código que pode lançar exceção.
- `catch`: captura e trata a exceção lançada.
- `finally`: executa sempre, com ou sem erro.

---

## Como posso capturar diferentes tipos de exceções usando `catch`?

```dart
try {
  // código que pode gerar exceção
} on FormatException catch (e) {
  print('Erro de formatação: $e');
} on IOException catch (e) {
  print('Erro de IO: $e');
} catch (e) {
  print('Outra exceção: $e');
}
```

---

## Em quais situações é útil usar o bloco `finally`?

- Fechar arquivos.
- Liberar conexões com banco de dados.
- Limpar recursos temporários, mesmo que uma exceção ocorra.

---

## Por que eu precisaria lançar uma exceção em meu código?

- Para indicar que algo inesperado aconteceu.
- Para impor validações e regras de negócio.
- Para interromper a execução de forma controlada.

---

## Como posso personalizar mensagens de erro ao lançar exceções?

```dart
throw FormatException('Formato inválido no campo "nome"');
```

Você também pode criar suas próprias classes de exceção.

---

## Quais são as melhores práticas para lançar exceções em Dart?

- Lance exceções apenas em situações excepcionais.
- Use tipos específicos (`FormatException`, `HttpException`, etc).
- Evite `throw Exception('mensagem')`, prefira exceções customizadas.
- Escreva mensagens claras e úteis.

---

## Qual a diferença entre usar `assert` e lançar uma exceção para verificar condições?

- `assert`: usado apenas no modo de desenvolvimento para verificar suposições.
- `throw`: usado em produção para controle de fluxo quando algo dá errado.

---

## Em quais situações o `assert` é mais útil durante o desenvolvimento?

- Garantir pré-condições em funções.
- Verificar estados internos do programa.
- Validar dados temporariamente durante testes.

---

## Como organizar minhas exceções no projeto?

- Crie um arquivo `excecoes.dart` com classes personalizadas.
- Agrupe por contexto: `ValidacaoException`, `ApiException`, `AuthException`.
- Documente quando cada uma deve ser usada.

---

## Como os erros e exceções afetam a execução do meu programa? Dê exemplos.

- Uma exceção **não tratada** encerra a execução normal.
- Um erro geralmente **trava a aplicação completamente**.

```dart
void dividir(int a, int b) {
  if (b == 0) throw Exception('Divisão por zero');
  print(a ~/ b);
}

try {
  dividir(10, 0);
} catch (e) {
  print('Erro capturado: $e');
}
```

---
# Condições e Laços em Dart

## Qual a diferença entre usar `if`, `else if` e `else`?

- `if`: executa o bloco se a condição for verdadeira.
- `else if`: permite testar outra condição se o `if` falhar.
- `else`: executa quando nenhuma das condições anteriores for satisfeita.

---

## Quais cuidados tenho que ter com `if` e `else`?

- Evite múltiplos `else if` encadeados (use `switch` quando possível).
- Mantenha o código legível e com indentação clara.
- Priorize condições mais prováveis primeiro.
- Cuidado com blocos sem `{}` em múltiplas linhas.

---

## Qual a importância da palavra-chave `break` em um `switch case`?

Evita que a execução continue nos próximos `case`. Sem `break`, todos os blocos subsequentes são executados até encontrar um `break` ou o fim do `switch`.

---

## Quando devo usar `switch` em vez de uma série de `if else`?

Use `switch` quando estiver comparando **um único valor** com múltiplas possibilidades fixas (ex: `int`, `String`, `enum`). Ele é mais limpo e legível.

---

## Qual a diferença entre um loop `for` tradicional e um loop `for...in`?

- `for`: permite controle total do índice e incremento.

```dart
for (int i = 0; i < 10; i++) {
  print(i);
}
```

- `for...in`: usado para percorrer coleções.

```dart
for (var item in lista) {
  print(item);
}
```

---

## Como posso repetir um bloco de código um número específico de vezes?

Use `for` tradicional:

```dart
for (int i = 0; i < 5; i++) {
  print('Repetição $i');
}
```

---

## Quais são os riscos de usar um loop `while` sem uma condição de parada adequada?

- Pode causar loop infinito.
- Pode travar o programa ou consumir muitos recursos.
- Dificulta a manutenção do código.

---

## Quando é adequado usar `for` e usar `while`?

- `for`: quando se sabe o número de repetições.
- `while`: quando a repetição depende de uma condição que será avaliada em tempo de execução.

---

## Qual a diferença entre os comandos `break` e `continue`?

- `break`: encerra o loop imediatamente.
- `continue`: pula a iteração atual e vai para a próxima.

---

## Como posso usar `break` para sair de um loop aninhado?

Use `label` para identificar o loop externo:

```dart
externo:
for (int i = 0; i < 5; i++) {
  for (int j = 0; j < 5; j++) {
    if (j == 2) break externo;
  }
}
```

---

## Em quais situações é útil usar o comando `continue` em um loop?

Quando você quer **ignorar uma iteração específica** sem parar o loop completamente. Exemplo: pular valores inválidos em uma lista.

---

## Como posso usar um loop `while` para ler dados de um arquivo?

```dart
while (!arquivo.eofSync()) {
  String linha = arquivo.readLineSync();
  print(linha);
}
```

*(Exemplo ilustrativo, depende do pacote usado)*

---

## Como posso usar `switch` com tipos de dados diferentes, como strings?

Dart permite usar `switch` com `String`:

```dart
switch (comando) {
  case 'iniciar':
    iniciar();
    break;
  case 'parar':
    parar();
    break;
}
```

---

## Como organizar o código com `if`, `else if`, `else`?

- Prefira estruturas claras e bem indentadas.
- Evite lógica duplicada.
- Extraia blocos complexos para funções separadas.
- Use `switch` para evitar `else if` em cascata.

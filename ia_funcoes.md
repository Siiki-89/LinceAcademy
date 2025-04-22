# Funções em Dart - Boas Práticas e Conceitos

## Quais cuidados devo ter ao criar funções em Dart?

- Nome descritivo e no padrão `camelCase`  
- Evite funções muito longas ou com muitas responsabilidades  
- Tipagem explícita dos parâmetros e do retorno  
- Evite efeitos colaterais (modificar variáveis globais, por exemplo)  

---

## Posso chamar minha função dentro dela mesma?

Sim, isso se chama **recursividade**. Use com cuidado para não gerar **loop infinito** ou **estouro de pilha** (stack overflow). Sempre garanta uma condição de parada.

---

## Existe limite de parâmetros a serem recebidos em uma função?

Não existe um limite fixo, mas o recomendado é **no máximo 4 ou 5 parâmetros**. Acima disso, considere passar um objeto ou usar parâmetros nomeados.

---

## É recomendado usar `dynamic` nos parâmetros de uma função?

Não. Use `dynamic` apenas em **casos muito específicos**. Prefira sempre usar tipos bem definidos para garantir **segurança e legibilidade** no código.

---

## Quando usar os operadores de valores opcionais e valores requeridos em uma função Dart?

- Use `[]` para **parâmetros posicionais opcionais**  
- Use `{}` com `required` para **parâmetros nomeados obrigatórios**  
- Use `{}` sem `required` e com valor padrão para **parâmetros nomeados opcionais**

---

## O que são parâmetros nomeados em uma função?

São parâmetros definidos entre `{}` que podem ser passados fora da ordem e com maior legibilidade.

```dart
void exibirMensagem({required String titulo, String corpo = ''}) {
  print('$titulo - $corpo');
}
```

---

## Quais métodos existem para variáveis do tipo `Function` em Dart?

Variáveis do tipo `Function` podem:

- Ser atribuídas a outras variáveis  
- Ser passadas como parâmetro  
- Ser chamadas com `()` como qualquer função  
- Usar `.call()` como `minhaFuncao.call()`

---

## Qual a diferença entre chamar minha função chamada `olaMundo` das seguintes formas `olaMundo` e `olaMundo()`?

- `olaMundo`: referencia a função como **objeto**, sem executá-la  
- `olaMundo()`: chama/executa a função imediatamente  

---

## Mostre exemplos de uma função tratando strings com seus diferentes métodos

```dart
void tratarTexto(String texto) {
  print(texto.toUpperCase());
  print(texto.toLowerCase());
  print(texto.trim());
  print(texto.contains('Dart'));
  print(texto.replaceAll('a', '@'));
}
```

---

## Traga exemplos de mau uso de funções

- Funções com muitas responsabilidades  
- Nomes genéricos (ex: `executar`, `processar`)  
- Uso excessivo de `dynamic`  
- Repetição de código (código duplicado)

```dart
// Ruim: faz muitas coisas
void processarTudo(dynamic a, dynamic b) {
  print(a);
  print(b);
  salvarNoBanco(a);
  enviarEmail(b);
}
```

---

## Como organizar minhas funções no código?

- Agrupe funções relacionadas em arquivos separados (ex: `utils.dart`, `validacoes.dart`)  
- Comente funções complexas  
- Nomeie bem para facilitar o uso e a leitura  
- Mantenha funções puras sempre que possível  

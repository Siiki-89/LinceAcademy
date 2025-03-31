void main() {
  //Inicializando as variáveis
  const String nome = 'Roberto';
  const String sobrenome = 'Carlos';
  const int idade = 15;
  const bool ativo = true;
  const double peso = 77;
  const String? nacionalidade = 'Brasileiro';
  
  //Imprimindo valores das variáveis
  print('Nome: $nome');
  print('Sobrenome: $sobrenome');
  print('Idade: $idade ${idade > 18 ? 'Maior de idade' : 'Menor de idade'}');
  print('Status: ${ativo == true ? 'Ativo' : 'Inativo'}');
  print('Peso: $peso');
  print('Nacionalidade: ${nacionalidade == null ? 'Não informada' : '$nacionalidade'}');
}

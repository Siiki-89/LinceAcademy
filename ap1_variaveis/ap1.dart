void main() {
    String nome = 'Roberto';
    String sobrenome = 'Carlos';
    int idade = 15;
    bool ativo = true;
    double peso = 1.83;
    String? nacionalidade = 'Brasileiro';

    print('Nome: $nome');
    print('Sobrenome: $sobrenome');
    print('Idade: $idade ${idade > 18 ? 'Maior de idade' : 'Menor de idade'}');
    print('Status: ${ativo == true ? 'Ativo' : 'Inativo'}');
    print('Peso: $peso');
    print('Nacionalidade: ${nacionalidade == null ? 'Não informada' : '$nacionalidade'}');
}

void main(){
  //Inicializando variável
  Map<String, List<String>> mapa = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR':	['Curitiba',	'Cascavel', 'Foz do Iguaçu'],
    'SP':	['Sao Paulo', 'Guarulhos',	'Campinas'],
    'MG':	['Belo Horizonte',	'Juiz de Fora',	'Berlinda']};

  //Imprimindo a sigla dos estados presentes na lista 
  print('Sigla dos estados presentes na lista: ');

  mapa.forEach((key, value) => print(key));
  
  //Imprimindo as cidades de SC
  print('Cidades de SC: ${mapa['SC']!..sort()}');

  //Inicializando variável, adicionando as cidades do mapa a ela e ordenando em ordem alfabetica 
  List<String> cidades = [];

  mapa.forEach((estado, cidade){
    for (String cidade in cidade){
      cidades.add('$cidade - $estado');
    }
  });
  
  cidades.sort();

  //Imprimindo as cidades
  print('Cidades em ordem alfabetica: ');
  cidades..forEach(print);
}
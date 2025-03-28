void main(){
  Map<String, List<String>> mapa = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR':	['Curitiba',	'Cascavel', 'Foz do Iguaçu'],
    'SP':	['Sao Paulo', 'Guarulhos',	'Campinas'],
    'MG':	['Belo Horizonte',	'Juiz de Fora',	'Berlinda']};

  print('Sigla dos estados presentes na lista: ');

  mapa.forEach((key, value) {
    print(key);
  },);

  print('Cidades de SC: ${mapa['SC']!..sort()}');

  List<String> cidades = [];
  
  mapa.forEach((estado, cidade){
    for (String cidade in cidade){
      cidades.add('$cidade - $estado');
    }
  });

  cidades.sort();

  print('Cidades em oredem alfabetica: ');
  cidades..forEach(print);
}
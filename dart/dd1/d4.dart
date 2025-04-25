void main () {
  //Obter data de hoje e chamando metodo somar data
  final hoje = DateTime.now();
  final dataSomada = somarDiasUteis (18, hoje);

  //Imprimindo as datas e chamando metodo formatar data
  print('Data atual: ${formatarData(hoje)}');
  print('Data calculada: ${formatarData(dataSomada)}');
}

//Soma apenas os dias uteis, ignorando sabado e domingo
DateTime somarDiasUteis (int qtdDias, DateTime data) {
  int diasUteisAdicionados = 0;
  
  while (diasUteisAdicionados < qtdDias) {
    data = data.add(Duration(days: 1));
    //Verifica se não é sabado nem domingo
    if (data.weekday != DateTime.saturday && data.weekday != DateTime.sunday) {
      diasUteisAdicionados++;
    }
  }
  return data;
}
//Formata data
String formatarData(DateTime data) {
  return '${data.day}/${data.month}/${data.year}';
}


void main (){
  //Inicializa a lista de graus celcius
  List<double> celcius= [0,4.2,15,18.1,21.7,32,40,41];
  //Chama o metodo para percorrer a lista 
  percorrerLista(celcius);
}
//Converte de celcius para fahrenheit
double celciusToFahrenheit (double celcius) => (celcius*9/5)+32;

//Converte de celcius para kelvin
double celciusToKelvin (double celcius) => celcius + 273.15;

//Percorre a lista e chama os metodos de conversão
void percorrerLista (List<double> celcius) {
  for (double celciu in celcius){
    print('Celcius: $celciu, '
    'fahrenheit: ${celciusToFahrenheit(celciu).toStringAsFixed(2)}, '
    'kelvin: ${celciusToKelvin(celciu).toStringAsFixed(2)}');
  }
}
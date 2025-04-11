void main() {
  print('¡Hola desde Dart!');
  
  // Ejemplos de variables
  String nombre = 'Usuario';
  int edad = 25;
  double altura = 1.75;
  
  print('Nombre: $nombre');
  print('Edad: $edad años');
  print('Altura: $altura metros');
  
  // Ejemplo de una lista
  List<String> frutas = ['manzana', 'banana', 'naranja'];
  print('\nLista de frutas:');
  for (var fruta in frutas) {
    print('- $fruta');
  }
}

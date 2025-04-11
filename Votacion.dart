/*
Crea una clase base llamada Votante que tenga propiedades como nombre, edad y haVotado. 
Luego, define un mixin llamado 
ValidacionVoto que tenga un método validarVoto para simular la validación del derecho a votar
 (por ejemplo, verificando la edad). Crea una clase VotanteValido que herede de Votante y use el mixin ValidacionVoto.
En el programa principal, crea un objeto de tipo VotanteValido, valida su derecho a votar, y muestra si el votante 
es elegible o no para votar.
*/

// Clase base
class Votante {
  String nombre;
  int edad;
  bool haVotado;

  Votante(this.nombre, this.edad, this.haVotado);
}

mixin ValidacionVoto {
  bool validarVoto(int edad) {
    return edad >= 18;
  }
}

class VotanteValido extends Votante with ValidacionVoto {
  late bool esApto;

  VotanteValido(String nombre, int edad, bool haVotado)
    : super(nombre, edad, haVotado) {
    esApto = validarVoto(edad);
  }

  void mostrarInfo() {
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("Ha Votado: ${haVotado ? 'Sí' : 'No'}");
    print("Apto: ${esApto ? 'Apto' : 'No apto'}");
    print("-----------------------------------");
  }
}

// Programa principal
void main() {
  List<VotanteValido> votantes = [];

  votantes.add(VotanteValido("Abel", 12, false));
  votantes.add(VotanteValido("Luisa", 21, true));
  votantes.add(VotanteValido("Marco", 17, false));
  votantes.add(VotanteValido("Elena", 33, false));

  for (var v in votantes) {
    v.mostrarInfo();
  }
}

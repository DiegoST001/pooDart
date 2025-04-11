/*
Estás desarrollando una aplicación para gestionar habilidades de personajes en un videojuego. Algunos personajes pueden lanzar 
hechizos, otros pueden atacar con armas, y otros pueden curar a sus aliados. Algunos personajes pueden combinar más de una 
de estas habilidades.
Tu objetivo es crear una estructura que permita que los personajes tengan distintas combinaciones de habilidades sin repetir 
código.
Por ejemplo, un mago puede lanzar hechizos y curar, un guerrero puede atacar con armas, y un paladín puede atacar 
con armas y curar.
Implementa la estructura de clases necesaria para representar estos personajes y sus habilidades. Luego, 
en la función principal,
crea al menos un personaje de cada tipo y muestra cómo utiliza sus habilidades.
*/
//HABILIDADES DE PERSONAJES
mixin LanzarHechizos {
  void lanzarHechizos() => print("Lanza hechizos");
}

mixin AtacarArmas {
  void atacarArmas() => print("Ataca con armas");
}

mixin Curar {
  void curar() => print("Curar");
}

//CLASES DE PERSONAJES GLOBAL
abstract class Personaje {
  void mostrarPersonaje();
  void mostrarHabilidades();
}

//CLASES DE PERSONAJES
class Mago extends Personaje with LanzarHechizos, Curar {
  @override
  void mostrarPersonaje() => print("Mago");

  @override
  void mostrarHabilidades() {
    print("Habilidades del Mago:");
    lanzarHechizos();
    curar();
  }
}

class Guerrero extends Personaje with AtacarArmas {
  @override
  void mostrarPersonaje() => print("Guerrero");

  @override
  void mostrarHabilidades() {
    print("Habilidades del Guerrero:");
    atacarArmas();
  }
}

class Paladin extends Personaje with AtacarArmas, Curar {
  @override
  void mostrarPersonaje() => print("Paladin");

  @override
  void mostrarHabilidades() {
    print("Habilidades del Paladin:");
    atacarArmas();
    curar();
  }
}

void main() {
  List<Personaje> personajes = [];

  // Input
  Personaje mago = Mago();
  Personaje guerrero = Guerrero();
  Personaje paladin = Paladin();

  personajes.add(mago);
  personajes.add(guerrero);
  personajes.add(paladin);

  // Output usando polimorfismo
  for (var personaje in personajes) {
    personaje.mostrarPersonaje();
    personaje.mostrarHabilidades();
    print(""); // Línea en blanco para separar
  }
}

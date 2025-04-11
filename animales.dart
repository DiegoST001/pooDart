class Animal {
  void hacerSonido() {
    print("Hace un sonido");
  }
}

class Gato extends Animal {
  @override
  void hacerSonido() {
    print("Miau");
  }
}

class Perro extends Animal {
  @override
  void hacerSonido() {
    print("Guau");
  }
}

class Vaca extends Animal {
  @override
  void hacerSonido() {
    print("Muuu");
  }
}

void main() {
  List<Animal> animales = [];

  // Input
  Animal gato = Gato();
  Animal perro = Perro();
  Animal vaca = Vaca();

  animales.add(gato);
  animales.add(perro);
  animales.add(vaca);

  // Output usando polimorfismo
  for (var animal in animales) {
    animal.hacerSonido();
  }

  // Llamadas individuales
  gato.hacerSonido();
  perro.hacerSonido();
}

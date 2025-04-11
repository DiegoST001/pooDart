//HABILIDADES DE VEHICULOS
mixin Volar {
  void volar() => print("Vuela");
}
mixin Navegar {
  void navegar() => print("Navega");
}
mixin Acelerar {
  void acelerar() => print("Acelera");
}

//CLASES DE GLOBAL
abstract class Vehiculo {
  void mostrarVehiculo();
  void mostrarAcciones();
}

//CLASES DE VEHICULOS
class Avion extends Vehiculo with Volar, Acelerar {
  @override
  void mostrarVehiculo() => print("Avión");
  
  @override
  void mostrarAcciones() {
    print("Acciones del Avión:");
    volar();
    acelerar();
  }
}

class Bote extends Vehiculo with Navegar, Acelerar {
  @override
  void mostrarVehiculo() => print("Bote");
  
  @override
  void mostrarAcciones() {
    print("Acciones del Bote:");
    navegar();
    acelerar();
  }
}

class Coche extends Vehiculo with Acelerar {
  @override
  void mostrarVehiculo() => print("Coche");
  
  @override
  void mostrarAcciones() {
    print("Acciones del Coche:");
    acelerar();
  }
}

class Moto extends Vehiculo with Acelerar {
  @override
  void mostrarVehiculo() => print("Moto");
  
  @override
  void mostrarAcciones() {
    print("Acciones de la Moto:");
    acelerar();
  }
}

class Bicicleta extends Vehiculo with Acelerar {
  @override
  void mostrarVehiculo() => print("Bicicleta");
  
  @override
  void mostrarAcciones() {
    print("Acciones de la Bicicleta:");
    acelerar();
  }
}

void main() {
  List<Vehiculo> vehiculos = [];

  // Input
  Vehiculo avion = Avion();
  Vehiculo bote = Bote();
  Vehiculo coche = Coche();
  Vehiculo moto = Moto();
  Vehiculo bicicleta = Bicicleta();

  vehiculos.add(avion);
  vehiculos.add(bote);
  vehiculos.add(coche);
  vehiculos.add(moto);
  vehiculos.add(bicicleta);

  // Output usando polimorfismo
  for (var vehiculo in vehiculos) {
    vehiculo.mostrarVehiculo();
    vehiculo.mostrarAcciones();
    print(""); // Línea en blanco para separar
  }
}

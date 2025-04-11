/*

Crea una clase base llamada Habitacion que tenga propiedades como numeroHabitacion,
tipo, y estaDisponible. Luego, define un mixin llamado ReservaHabitacion que tenga un
método reservar para simular la reserva de una habitación. Después, crea una clase 
HabitacionReservada que herede de Habitacion y utilice el mixin ReservaHabitacion.
En el programa principal, crea una lista de objetos HabitacionReservada, reserva algunas
habitaciones, y muestra el estado de disponibilidad de cada habitación en la salid

*/

class Habitacion {
  int numeroHabitacion;
  String tipo;
  bool estaDisponible;

  Habitacion(this.numeroHabitacion, this.tipo, this.estaDisponible);

  void mostrarEstado() {
    print("Habitación $numeroHabitacion - Tipo: $tipo");
    print("Estado: ${estaDisponible ? 'Disponible' : 'No disponible'}");
  }
}

mixin ReservaHabitacion {
  void reservar(Habitacion habitacion) {
    if (habitacion.estaDisponible) {
      habitacion.estaDisponible = false;
      print("¡Habitación ${habitacion.numeroHabitacion} reservada con éxito!");
    } else {
      print(
        "Lo siento, la habitación ${habitacion.numeroHabitacion} no está disponible.",
      );
    }
  }
}

class HabitacionReservada extends Habitacion with ReservaHabitacion {
  HabitacionReservada(int numeroHabitacion, String tipo, bool estaDisponible)
    : super(numeroHabitacion, tipo, estaDisponible);
}

void main() {
  // Crear una lista de habitaciones
  List<HabitacionReservada> habitaciones = [
    HabitacionReservada(101, "Individual", true),
    HabitacionReservada(102, "Doble", true),
    HabitacionReservada(103, "Suite", true),
    HabitacionReservada(104, "Individual", true),
    HabitacionReservada(105, "Suite", true),
  ];

  // Mostrar estado inicial
  print("\n=== Estado inicial de las habitaciones ===");
  for (var habitacion in habitaciones) {
    habitacion.mostrarEstado();
    print("----------------------------------------");
  }

  // Realizar algunas reservas
  print("\n=== Realizando reservas ===");
  habitaciones[0].reservar(habitaciones[0]); // Reservar habitación 101
  habitaciones[2].reservar(habitaciones[2]); // Reservar habitación 103
  habitaciones[2].reservar(habitaciones[2]); // Intentar reservar 103 nuevamente

  // Mostrar estado final
  print("\n=== Estado final de las habitaciones ===");
  for (var habitacion in habitaciones) {
    habitacion.mostrarEstado();
    print("----------------------------------------");
  }
}

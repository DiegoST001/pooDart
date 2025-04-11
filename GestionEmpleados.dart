/*

Crea una clase base llamada Empleado con propiedades como nombre, apellido, salario y horasTrabajadas. 
Luego, define un mixin llamado Bonificaciones que tenga un método para calcular la bonificación basada 
en el salario del empleado. Después, crea una clase EmpleadoConBonificaciones que herede de Empleado y
 use el mixin Bonificaciones.

En el programa principal, crea una lista de objetos EmpleadoConBonificaciones y calcula la bonificación 
para cada empleado basada en su salario. Finalmente, muestra el nombre del empleado 
junto con su bonificación en la salida.

*/

class Empleado {
  String nombre;
  String apellido;
  double salario;
  double horasTrabajadas;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

mixin Bonificaciones {
  double bonificacion(double salario) => salario * 0.1;
}

class EmpleadoBonificaciones extends Empleado with Bonificaciones {
  EmpleadoBonificaciones(
    String nombre,
    String apellido,
    double salario,
    double horasTrabajadas,
  ) : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  List<EmpleadoBonificaciones> empleados = [];

  empleados.add(EmpleadoBonificaciones("Juan", "Pérez", 2500, 40));
  empleados.add(EmpleadoBonificaciones("Ana", "González", 3000, 45));
  empleados.add(EmpleadoBonificaciones("Carlos", "Martínez", 2800, 38));

  for (var empleado in empleados) {
    double bonificacionEmpleado = empleado.bonificacion(empleado.salario);
    print(
      "${empleado.nombre} ${empleado.apellido} - Bonificación: \$${bonificacionEmpleado}",
    );
  }
}

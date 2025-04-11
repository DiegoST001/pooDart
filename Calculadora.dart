/*
Crea una clase base llamada Calculadora que tenga operaciones básicas (suma, resta,
multiplicación y división). Luego, define un mixin llamado OperacionesAdicionales
que agregue operaciones como potencia y raíz cuadrada, respectivamente. 
Crea una clase CalculadoraAvanzada que use ambas mixins y sea capaz de realizar 
todas las operaciones definidas. En el programa principal, crea un objeto de tipo 
CalculadoraAvanzada y realiza algunas operaciones matemáticas.
*/

import 'dart:math' as math;

class Calculadora {
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
  double division(double a, double b) {
    if (b == 0) {
      throw Exception("No se puede dividir por cero");
    }
    return a / b;
  }
}

mixin OperacionesAdicionales {
  double potenciacion(double base, double exponente) =>
      math.pow(base, exponente).toDouble();

  double raizCuadrada(double numero) {
    if (numero < 0) {
      throw Exception(
        "No se puede calcular la raíz cuadrada de un número negativo",
      );
    }
    return math.sqrt(numero);
  }
}

class CalculadoraAvanzada extends Calculadora with OperacionesAdicionales {}

void main() {
  var calc = CalculadoraAvanzada();
  print("Suma: ${calc.suma(10, 5)}");
  print("Resta: ${calc.resta(10, 5)}");
  print("Multiplicación: ${calc.multiplicacion(10, 5)}");
  print("División: ${calc.division(10, 5)}");
  print("Potencia: ${calc.potenciacion(2, 3)}");
  print("Raíz cuadrada: ${calc.raizCuadrada(16)}");
}

/*
class Calculadora {
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
  double division(double a, double b) {
    if (b == 0) {
      throw Exception("No se puede dividir por cero");
    }
    return a / b;
  }
}

mixin OperacionesAdicionales {
  double potencia(double base, double exponente) =>
      math.pow(base, exponente).toDouble();
  double raizCuadrada(double numero) {
    if (numero < 0) {
      throw Exception(
        "No se puede calcular la raíz cuadrada de un número negativo",
      );
    }
    return math.sqrt(numero);
  }
}

class CalculadoraAvanzada extends Calculadora with OperacionesAdicionales {}

void main() {
  var calc = CalculadoraAvanzada();

  // Probando operaciones básicas
  print("Operaciones básicas:");
  print("Suma: ${calc.suma(10, 5)}");
  print("Resta: ${calc.resta(10, 5)}");
  print("Multiplicación: ${calc.multiplicacion(10, 5)}");
  print("División: ${calc.division(10, 5)}");

  // Probando operaciones adicionales
  print("\nOperaciones adicionales:");
  print("Potencia (2³): ${calc.potencia(2, 3)}");
  print("Raíz cuadrada de 16: ${calc.raizCuadrada(16)}");
}
*/

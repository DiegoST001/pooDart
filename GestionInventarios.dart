/*

Crea una clase base llamada Producto que tenga propiedades como nombre, precio y cantidadEnStock.
Luego, define un mixin llamado GestionInventario que tenga un método actualizarStock para simular
la actualización del stock de productos. Por último, crea una clase ProductoConGestion que herede
de Producto y utilice el mixin GestionInventario.
En el programa principal, crea un objeto de tipo ProductoConGestion, actualiza su stock y 
muestra el nuevo stock en la salida.

*/
class Producto {
  String nombre;
  double precio;
  int stock;
  Producto(this.nombre, this.precio, this.stock);
}

mixin Gestioninventarios {
  void actualizarStock(int cantidad) {
    if (this is Producto) {
      Producto producto = this as Producto;
      producto.stock += cantidad;
      print(
        "\nStock actualizado. Nuevo stock \nProducto:${producto.nombre}\nStock actualizado:${producto.stock}",
      );
    }
  }
}

class ProductoGestion extends Producto with Gestioninventarios {
  ProductoGestion(String nombre, double precio, int stock)
    : super(nombre, precio, stock);
}

void main() {
  List<ProductoGestion> productos = [];

  productos.add(ProductoGestion("Laptop", 3200, 2));
  productos.add(ProductoGestion("TV", 250, 5));
  productos.add(ProductoGestion("Zapatos", 110, 10));
  productos.add(ProductoGestion("Mochila", 95, 50));
  productos.add(ProductoGestion("Mouse", 13.20, 100));

  for (var p in productos) {
    print("\nNombre: ${p.nombre}\nPrecio: ${p.precio}\nStock: ${p.stock}");
    print("------------------------------------------------------");
  }

  productos[0].actualizarStock(10);

  // ProductoGestion productoGestion = ProductoGestion("Laptop", 13.20, 5);
  // print(
  //   "Nombre: ${productoGestion.nombre}\nPrecio: ${productoGestion.precio}\nStock: ${productoGestion.stock}",
  // );

  // //ACTUALIZAR STOCK
  // productoGestion.actualizarStock(5);
}

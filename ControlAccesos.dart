/*

Crea una clase base llamada Usuario que tenga propiedades como nombre, email y contraseña. Luego, define un mixin 
llamado Autenticacion que tenga un método iniciarSesion para simular el inicio de sesión. Por último, crea una clase
UsuarioAutenticado que herede de Usuario y utilice el mixin Autenticacion. En el programa principal, crea un objeto
de tipo UsuarioAutenticado e invoca el método iniciarSesion

*/
class Usuario {
  String nombre;
  String email;
  String password;

  Usuario(this.nombre, this.email, this.password);
}

mixin Autenticacion {
  void iniciarSesion() => print("Iniciar sesión");
}

class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String password)
    : super(nombre, email, password);

  void iniciarSesion() => print("Iniciar sesión");
}

void main() {
  UsuarioAutenticado usuario = UsuarioAutenticado(
    "Usuario",
    "usuario@example.com",
    "password",
  );
  usuario.iniciarSesion();
}

class Persona {
  String? v_nombre;
  int? v_edad;

  Persona(String nombre, int edad) {
    v_nombre = nombre;
    v_edad = edad;
  }
}

void main() {
  Persona objeto1 = Persona('José', 60);
  print(objeto1.v_nombre);
  print(objeto1.v_edad);
  print("JOSE EMMANUEL RAMIREZ OLIVARES");
  print("DAMARIS AVILA PACHECO");
}
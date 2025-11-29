import 'dart:io';
class Auto {
  String? marca, modelo;
  int? anio;
  //getter
  String DimeDatos() {
    return '''Marca: $marca
Modelo: $modelo
año: $anio
''';
  }
  //setter 
  void PideDatos() {
    print('Dime marca del vehiculo...');
    marca = stdin.readLineSync()!;
    print('Dime modelo del vehiculo...');
    modelo = stdin.readLineSync()!;
    print('Dime año del vehiculo...');
    anio = int.parse(stdin.readLineSync()!);
  }
}
void main() {
  Auto auto1 = Auto();
  auto1.PideDatos();
  print(auto1.DimeDatos());
  print("JOSE EMMANUEL RAMIREZ OLIVARES");
  print("DAMARIS AVILA PACHECO");
}
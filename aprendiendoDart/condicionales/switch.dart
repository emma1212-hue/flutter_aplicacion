import 'dart:io';
main(){
print("Coloca el nivel");
String nivel = stdin.readLineSync()!;

switch(nivel){
  case 'a':
    print("Excelente");
  case 'b':
    print("Bueno");
  case 'c':
    print("Regular");
  default:
    print("Nivel colocado incorrecto");

}
}
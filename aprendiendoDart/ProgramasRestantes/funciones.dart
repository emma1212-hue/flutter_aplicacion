import 'dart:ffi';
import 'dart:io';
import 'dart:math';
void main(){
  int a,b;
  print("Ingrese valor de a");
  a = int.parse(stdin.readLineSync()!);

  print("Ingrese valor de b");
  b = int.parse(stdin.readLineSync()!);

print("La potencia de $a elevado a $b es: ${pow(a,b)}");
print("La raiz cuadrada de $a es: ${sqrt(a).round()}");

double c= 8.34324324;
print(c.round());
print(c.floor());
print(min(a,b));
print(max(a,b));

var aleatorio = Random();
print(aleatorio.nextInt(100));
print(aleatorio.nextDouble());
}
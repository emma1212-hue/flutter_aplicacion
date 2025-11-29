import 'dart:io';
main(){
  int valor1, valor2;
  var resultado;
  print("Ingrese valor 1...");
  valor1 = int.parse(stdin.readLineSync()!);

  print("Ingrese valor 2...");
  valor2 = int.parse(stdin.readLineSync()!);

  //operador de suma
  resultado=valor1 + valor2;
  print("Resultado de la suma: $resultado");
  
  //operador de suma
  resultado=valor1 - valor2;
  print("Resultado de la resta: $resultado");
  
    //operador multiplicacion
  resultado=valor1 * valor2;
  print("Resultado de la multiplicacion: $resultado");
  
    //operador de division 
  resultado=valor1 / valor2;
  print("Resultado de la division: $resultado");

  //operador de division entera
  resultado=valor1 /- valor2;
  print("Resultado de la division entera: $resultado");

  //operador de residuo
  resultado=valor1 % valor2;
  print("Resultado del residuo: $resultado");
}
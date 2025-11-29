import 'dart:io';
void main(){
  print("Ingresa tu edad");
  int edad = int.parse(stdin.readLineSync()!);

  if(edad >=18)
  {
    print("Eres mayor de edad");    
  }
  else if(edad >=10)
  {
    print("Eres un adolescente");
  }
  else
  {
    print("Eres menor de edad");
  }


  
  int numero = 10;
  String resultado=(numero%2==0)?"par":"impar";
  print(resultado);
  
  


}
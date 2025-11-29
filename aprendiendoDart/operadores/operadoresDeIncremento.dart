void main(){
  int valor = 5, valor2=8, valor3=7;

  print(valor);
  print("Valor pre-incrementado: ${++valor}");
  

  print("Valor post-incrementado: ${valor2++}");
  print(valor2);

  valor+=4;
  print("Valor pre-incrementado +3: ${++valor}");


  

  print("---- VALORES DE DECREMENTO -----");
  print(valor3);
  print("Valor pre-decrementado: ${--valor3}");
  

  print("Valor post-decrementado: ${valor3--}");
  print(valor3);

  valor3-=4;
  print("Valor pre-decrementado -3: ${valor3}");
}
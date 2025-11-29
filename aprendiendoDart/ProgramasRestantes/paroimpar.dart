main () {
  for (int i = 1; i <= 10; i++) {
    switch (i % 2) {
      case 0:
        print("El numero $i es par");
        break;
      case 1:
        print("El numero $i es impar");
        break;
    }
  }
}
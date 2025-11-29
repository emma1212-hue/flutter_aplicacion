enum Fruit { 

  apple, banana 
  }

void main() {
  var a = Fruit.apple;

  switch (a) {
    case Fruit.apple:
      print('It is an apple');
      break;
    case Fruit.banana:
      print('It is a banana');
      break;
  }
  for (var value in Fruit.values) {
    print(value);
  }

  //print(Fruit.values[1]);
}
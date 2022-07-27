class Numeros {
  int i;
  Numeros(this.i);

  Numeros operator +(Numeros numeros2) {
    return Numeros(i + numeros2.i);
  }

  Numeros operator -(Numeros numeros2) {
    return Numeros(i + numeros2.i);
  }
}

void main(){
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);
  
  // var intRecord = (1, 2);
  // var swapped = tukar(intRecord);
  // print(swapped);

  // (String, int) mahasiswa = ("Mochammad Nizar Mahi", 2241720185);
  // print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 2241720185,'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
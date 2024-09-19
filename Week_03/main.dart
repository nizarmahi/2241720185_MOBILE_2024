void main() {
  
  String namaLengkap = "Mochammad Nizar Mahi";
  String nim = "2241720185";

  print("Bilangan prima dari 0 hingga 201:");

  for (int i = 2; i <= 21; i++) {
    bool isPrime = true;

    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print(i);
      print("Nama : $namaLengkap, NIM : $nim");
    }
  }
}
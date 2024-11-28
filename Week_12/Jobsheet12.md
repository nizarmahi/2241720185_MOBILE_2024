# *12 | Dart Streams*

**Nama** : Mochammad Nizar Mahi

**NIM** : 2241720185

**Kelas** : TI-3F / 13

---

# Praktikum 1 : Dart Streams

## Langkah 1 : Buat Project Baru
Buatlah sebuah project flutter baru dengan nama stream_nama (beri nama panggilan Anda) di folder week-12/src/ repository GitHub Anda.

## Langkah 2: Buka file main.dart
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Mahi',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
>**Soal 1**
>- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
![](assets/Soal1.png)
>- Gantilah warna tema aplikasi sesuai kesukaan Anda.
Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

## Langkah 3 : Buat file baru stream.dart
Buat file baru di folder lib project Anda. Lalu isi dengan kode berikut.
![](assets/P1L3.png)
```dart
import 'package:flutter/material.dart';

class ColorStream {

}
```
## Langkah 4 : Tambah variabel colors
Tambahkan variabel di dalam `class ColorStream `seperti berikut.
```dart
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
  ];
```

>**Soal 2**
>- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
![](assets/Soal%202.png)
>- Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"

## Langkah 5 : Tambah method getColors()
Di dalam `class ColorStream` ketik method seperti kode berikut. Perhatikan tanda bintang di akhir keyword `async*` (ini digunakan untuk melakukan `Stream` data)

```dart
Stream<Color> getColors() async* {

}
```
## Langkah 6 Tambah perintah yield*
```dart
yield* Stream.periodic(
  const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
```
>**Soal 3**
>- Jelaskan fungsi keyword yield* pada kode tersebut!  
> **Jawaban** : Fungsi keyword `yield*` digunakan untuk mengembalikan nilai stream yang dihasilkan oleh `Stream.periodic` ke atas. Jadi, `yield*` akan mengembalikan stream yang berisi warna-warna yang berubah-ubah setiap 1 detik. Jika ingin mengembalikan stream yang berisi warna-warna yang tetap, maka gunakan saja `yield` saja.
>- Apa maksud isi perintah kode tersebut?  
> **Jawaban** : Maksud kode tersebut adalah mengembalikan stream yang berisi warna-warna yang berubah-ubah setiap 1 detik. Jika ingin mengembalikan stream yang berisi warna-warna yang tetap, maka gunakan saja `yield` saja.
>- Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"

## Langkah 7 : Buka main.dart
Ketik kode impor file ini pada file `main.dart`
```dart
import 'stream.dart';
```
## Langkah 8 : Tambah variabel
Ketik dua properti ini di dalam `class _StreamHomePageState`
```dart
Color bgColor = Colors.blueGrey;
late ColorStream colorStream;
```
## Langkah 9 : Tambah method changeColor()
Tetap di file main, Ketik kode seperti berikut
```dart

```
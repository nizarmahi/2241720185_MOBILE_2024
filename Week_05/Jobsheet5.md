
# *05 | Aplikasi Pertama dan Widget Dasar Flutter*

**Nama** : Mochammad Nizar Mahi

**NIM** : 2241720185

**Kelas** : TI-3F / 13

---
## Praktikum 1 | Membuat Project Flutter Baru

### Langkah 1 : Membuka VS Code untuk membuat project baru 

![P1L1](assets/P1L1.png)

### Langkah 2 : Memilih direktori folder 

![P1L2](assets/P1L2.png)

### Langkah 3 : Membuat nama project flutter dengan nama "hello_world"

![P1L3](assets/P1L3.png)

### Langkah 4 : Project Flutter Siap

![P1L4](assets/P1L4.png)

## Praktikum 2 | Menghubungkan Perangkat Android atau Emulator

### Hasil Praktikum 2 


![P2](assets/P2.png)

![P2_](assets/P2_.png)

## Praktikum 3 | Membuat Repository GitHub dan Laporan Praktikum

### Langkah 1 | Membuat Repoository Baru dengan nama flutter_fundamental_part1

![P3L1](assets/P3L1.png)

### Langkah 2 | Hasil Run dan Debug pada Chrome

![P3L2](assets/P3L2.png)

- Link Repository : [flutter_fundamental_part1](https://github.com/nizarmahi/flutter_fundamental_part1)

## Praktikumm 4 | Menerapkan Widget Dasar

### Langkah 1 | Text Widget

- Membuat file baru dengan nama `text_widget.dart` dan kode 
```dart
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
        "Nama saya Mochammad Nizar Mahi, sedang belajar Pemrograman Mobile",
        style: TextStyle(color: Colors.red, fontSize: 14),
        textAlign: TextAlign.center);
  }
}
```
- Import file `text_widget.dart` ke `main.dart` lalu ganti bagian text widget dengan kode di atas. 
- Hasil Kode : 

![P4L1](assets/P4L1.png)

### Langkah 2 | Image Widget

- Membuat file baru dengan nama `image_widget.dart` dan kode 
```dart
import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("logo_polinema.jpg") // Sesuaikan dengan nama gambar anda
    );
  }
}
```

- Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

```
flutter:
  assets:
     - logo_polinema.jpg
```

- Hasil Langkah 2 :

![P4L2](assets/P4L2.png)

## Praktikumm 5 | Menerapkan Widget Material Design dan iOS Cupertino

### Langkah 1 | Cupertino Button dan Loading Bar
- Membuat file baru dengan nama `loading_cupertino.dart` dengan kode :
```dart
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyLoadingCupertino extends StatelessWidget {
  const MyLoadingCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: const Text("Contoh button"),
              onPressed: () {},
            ),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
```

- Hasil : 
![P5L1](assets/P5L1.png)

### Langkah 2 | Floating Action Button
- Membuat file baru dengan nama `fab_widget.dart` dengan kode :

```dart
import 'package:flutter/material.dart';

class MyFabWidget extends StatelessWidget {
  const MyFabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.pink,
          child: const Icon(Icons.thumb_up),
        ),
      ),
    );
  }
}
```
- Hasil : 
![P5L2](assets/P5L2.png)

### Langkah 3 | Scaffold Widget

- Mengganti seluruh kode pada `main.dart` dengan kode : 
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
```

Hasil :
![P5L3](assets/P5L3.png)

### Langkah 4 | Dialog Widget

- Mengubah semua kode pada `main.dart` dengan kode :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
```

Hasil :

![P5L4](assets/P5L4.png)

### Langkah 5 | Input dan Selected Text

- Mengubah kode pada file `main.dart` pada baguan class MyApp menjadi : 
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh TextField")),
        body: const TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nama',
          ),
        ),
      ),
    );
  }
}
```

Hasil : 

![P5L5](assets/P5L5.png)

### Langkah 6 | Date and Time Pickers 
- Mengubah kode pada file `main.dart` pada bagian class MyApp menjadi :
```dart
import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  //  Initial SelectDate FLutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                // ignore: avoid_print
                print(selectedDate.day + selectedDate.month + selectedDate.year)
              },
              child: const Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}
```

Hasil : 

![P5L6](assets/P5L6.png)

## Tugas Praktikum | Codelabs Google

### no. 1 | First Hot Reload

![TL1](assets/TL1.png)

### no. 2 | Adding a Button

![TL2](assets/TL2.png)

### no. 3 | Add Card

![TL3](assets/TL3.png)

### no. 4 | Theme and Style

![TL4](assets/TL4.png)

### no. 5 | TextTheme

![TL5A](assets/TL5A.png)
![TL5B](assets/TL5B.png)

### no. 6 | Center the UI

![TL6](assets/TL6.png)

### no. 7 | Add Function and Add Button

![TL7](assets/TL7.png)

### no. 8 | Add Navigation Rail

![TL8](assets/TL8.png)

### no. 9 | SetState

![TL9](assets/TL9.png)

### no. 10 | Add New Page

![TL10](assets/TL10.png)


import 'package:flutter/material.dart';
import 'package:hello_state/halamandua.dart';

void main() {
  runApp(const MaterialApp(home: Myapp()));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var judul = "Halaman Login";
  var body = "Ini isi body";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 8, 226, 37),
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.adjust),
            title: Text("Peminjaman"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyWidget(
                    parameter: "A",
                    parameter2: "B",
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Pengembalian"),
          ),
        ],
      )),
      appBar: AppBar(title: Center(child: Text(judul))),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "Ini judul yang berubah";
          body = "Ini adalah body yang berubah";
        });

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyWidget(
              parameter: "A",
              parameter2: "B",
            ),
          ),
        );
      }),
      body: Text(body),
    );
  }
}

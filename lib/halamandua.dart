import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hello_state/main.dart';

class MyWidget extends StatelessWidget {
  final String parameter;
  final String parameter2;
  const MyWidget(
      {super.key, required this.parameter, required this.parameter2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Halaman 2")),
      ),
      body: Column(
        children: [
          Text("Login Berhasil"),
          Text(this.parameter),
          ElevatedButton(
            child: Text("Kembali"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: Text("Log Out"),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const Myapp(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

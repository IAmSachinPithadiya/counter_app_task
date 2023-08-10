import 'package:flutter/material.dart';
import 'list_widget.dart'; // improved code
// import 'list.dart'; // code which have problem

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'counter',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(title: const Text("Counter app")),
          body: const ListWidget()),
    );
  }
}

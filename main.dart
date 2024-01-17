import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Title"), actions: const [Icon(Icons.accessibility_new_rounded), Icon(Icons.accessible_outlined)],
      centerTitle: true),
      body: const Center(child: SizedBox(child: Text("Body of app"),)),
      bottomNavigationBar: const ListTile(title: Text("Title"), 
        subtitle: Text("Subtitle"),
        leading: Icon(Icons.account_box),
        trailing: Icon(Icons.join_right_rounded),),
      drawer: Drawer(),
      );
  }
}
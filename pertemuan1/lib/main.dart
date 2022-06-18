import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      title: 'Flutter',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text('Faizal'),
                accountEmail: Text('faizal@unisnu.ac.id')),
                
            InkWell(
              child: ListTile(
                leading: const Icon(Icons.access_alarm),
                title: Text('Past Work'),
              ),
              onTap: () {},
            )
          ],
          reverse: true,
        ),
      ),
      appBar: AppBar(
        title: Text('Aplikasiku'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
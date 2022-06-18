import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Drawer',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text('This is Drawer Header')),
            InkWell(
            child: ListTile(title: Text('This is tile 1'),
            leading: const Icon(Icons.access_alarm),
            onTap: (){},
            ),
            ),
            ListTile(title: Text('This is tile 2'),
            onTap: (){},
            ),
          ],
        
        ),
      ),
    );
  }
}
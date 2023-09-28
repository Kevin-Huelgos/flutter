import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    //Prametros
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi primer proyecto"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          const Text(
            "Primera imagen de Deadpool",
            style: TextStyle( fontSize: 40, color: Colors.blue,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20,),
            Image.asset('asset/img/banner.jpg',width: 200,height: 200,)
        ],) 
      ),
    );
  }

}

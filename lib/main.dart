import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Android ATC Pizza Place',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
          child: Column(
        children: [
          PizzaCard(
            pizzaName: 'Vegetable Pizza',
            pizzaImg: 'assets/pizza1.jpg',
          ),
          PizzaCard(pizzaName: 'Cheese Pizza', pizzaImg: 'assets/pizza2.jpg',),
          PizzaCard(pizzaName: 'Box Of Fries', pizzaImg: 'assets/fries.jpg',),
        ],
      )),
    );
  }
}

class PizzaCard extends StatelessWidget {
  final String? pizzaName;
  final String? pizzaImg;

  PizzaCard({@required String? this.pizzaName, @required String? this.pizzaImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,

      child: Card(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image(image: AssetImage(pizzaImg as String)),
              SizedBox(width: 8.0),
              Text(pizzaName as String, style: TextStyle(fontSize: 20.0),)
            ],
          ),
        ),
      ),
    );
  }
}

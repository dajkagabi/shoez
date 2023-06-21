import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cipő Webshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> shoes = [
    {
      'name': 'Fehér edzőcipő',
      'image': 'assets/images/shoez_1.png',
      'price': '99.99 USD',
    },
    {
      'name': 'Fekete sportcipő',
      'image': 'assets/images/shoez_2.png',
      'price': '79.99 USD',
    },
    {
      'name': 'Piros futócipő',
      'image': 'assets/images/shoez_3.png',
      'price': '119.99 USD',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cipő Webshop'),
      ),
      body: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  shoes[index]['image'],
                  width: double.infinity,
                  height: 290.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 15.0),
                Text(
                  shoes[index]['name'],
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  shoes[index]['price'],
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          );
        },
      ),
    );
  }
}

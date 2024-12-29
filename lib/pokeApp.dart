import 'package:flutter/material.dart';

void main() {
  runApp(const PokeApp());
}

class PokeApp extends StatelessWidget {
  const PokeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<Map<String, String>> pokemonList = const [
    {'name': 'Bulbasaur', 'image': 'https://i.pinimg.com/736x/70/4b/bd/704bbdf2f8328b62160eb1244ac9ece5.jpg'},
    {'name': 'Ivysaur', 'image': 'assets/ivysaur.png'},
    {'name': 'Venusaur', 'image': 'assets/venusaur.png'},
    {'name': 'Charmander', 'image': 'assets/charmander.png'},
    {'name': 'Charmeleon', 'image': 'assets/charmeleon.png'},
    {'name': 'Charizard', 'image': 'assets/charizard.png'},
    {'name': 'Squirtle', 'image': 'assets/squirtle.png'},
    {'name': 'Wartortle', 'image': 'assets/wartortle.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poke App'),
        backgroundColor: Colors.teal,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: pokemonList.length,
        itemBuilder: (context, index) {
          final pokemon = pokemonList[index];
          return Card(
            elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Expanded(
                      child: Image.network(
                        pokemon['image']!,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        pokemon['name']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          );
        },
      ),
    );
  }
}
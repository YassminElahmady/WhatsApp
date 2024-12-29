
import 'package:flutter/material.dart';

void main() {
  runApp(const PinterestApp());
}

class PinterestApp extends StatelessWidget {
  const PinterestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PinterestScreen(),
    );
  }
}

class PinterestScreen extends StatelessWidget {
  final List<String> topics = [
    "DIY and Home Improvement",
    "Home Decor",
    "Food and Drink",
    "Humor",
    "Travel",
    "Technology",
    "Men's Fashion",
    "Art",
    "Design",
    "Photography",
    "Tattoos and Body Art",
    "Funny Pictures",
    "Gardening",
    "Quotes",
    "Animals",
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.yellow,
    Colors.brown,
    Colors.pink,
    Colors.teal,
    Colors.indigo,
    Colors.cyan,
    Colors.lime,
    Colors.amber,
    Colors.grey,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Pinterest"),
        backgroundColor: Colors.black12,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Pick 5 or more topics",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: topics.asMap().entries.map((entry) {
                    int index = entry.key;
                    String topic = entry.value;

                    return GestureDetector(
                      onTap: () {
                        // Handle topic selection
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 15,
                        height: 120,
                        decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            topic,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle navigation to the next screen
              },
              child: const Text("Next"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
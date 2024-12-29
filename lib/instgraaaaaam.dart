
import 'package:flutter/material.dart';
void main() {
  runApp(const SocialApp());
}

class SocialApp extends StatelessWidget {
  const SocialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social App',
      theme: ThemeData.dark(),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('yassmin.elahmady'),
        actions: [
          IconButton(icon: const Icon(Icons.add_circle_outline), onPressed: () {}),
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Profile Header
          const ProfileHeader(),
          const SizedBox(height: 10),

          // Highlights Section
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                HighlightItem(label: "places", icon: Icons.place),
                HighlightItem(label: "vibes", icon: Icons.music_note),
                HighlightItem(label: "night", icon: Icons.nightlight_round),
              ],
            ),
          ),

          // Posts Grid
          Expanded(child: PostsGrid()),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                'https://via.placeholder.com/150'), // Replace with profile image
          ),
          Column(
            children: const [
              Text('58', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text('Posts'),
            ],
          ),
          Column(
            children: const [
              Text('54', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text('Followers'),
            ],
          ),
          Column(
            children: const [
              Text('12', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text('Following'),
            ],
          ),
        ],
      ),
    );
  }
}

class HighlightItem extends StatelessWidget {
  final String label;
  final IconData icon;

  const HighlightItem({Key? key, required this.label, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(icon, size: 30),
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}

class PostsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: 6, // Replace with dynamic count from backend
      itemBuilder: (context, index) {
        return Image.network(
          'https://via.placeholder.com/150', // Replace with post images
          fit: BoxFit.cover,
        );
      },
    );
  }
}

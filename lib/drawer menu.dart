import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with a hamburger menu
      appBar: AppBar(
        title: Text('Drawer Example'),
        leading: IconButton(
          icon: Icon(Icons.menu), // Hamburger menu icon
          onPressed: () {
            // Open the drawer when the menu is tapped
            Scaffold.of(context).openDrawer();
          },
        ),
      ),

      // Define the Drawer widget
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer header (optional)
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.blue),
              ),
            ),
            // Drawer items
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle home tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle settings tap
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),

      // Body of the screen
      body: Center(
        child: Text('Tap the menu icon to open the drawer!'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [];
  final TextEditingController _controller = TextEditingController();
  final Map<String, String> predefinedAnswers = {
    "how are you?": "fine, and you?",
    "Do you see Flutter being important in the future?": "yes,very important",
  };

  void sendMessage() {
    if (_controller.text.isNotEmpty) {
      String userMessage = _controller.text;
      setState(() {
        messages.add("you: $userMessage");
        if (predefinedAnswers.containsKey(userMessage)) {
          messages.add("replay: ${predefinedAnswers[userMessage]}");
        } else {
          messages.add("replay:sorry, I don't have an answer for this question");
        }
        _controller.clear(); //
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'اكتب رسالة',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage, //
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
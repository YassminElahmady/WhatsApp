
import 'package:flutter/material.dart';

class WhatsappMessage extends StatefulWidget {
  const WhatsappMessage({super.key});

  @override
  State<WhatsappMessage> createState() => _WhatsappMessage();
}
List <String> messages=[];
final TextEditingController _controller = TextEditingController();

class _WhatsappMessage extends State<WhatsappMessage> {
  final Map<String,String>sendMessage={
  'How are you?':"fine,and you?",
  'Do you see Flutter being important in the future?':'yes very important'
  };
  void sendingMessage() {
    if (_controller.text.isNotEmpty) {
      String userMessage = _controller.text;
      setState(() {
        messages.add("you: $userMessage");


        if (sendMessage.containsKey(userMessage)) {
          messages.add("replay: ${sendMessage[userMessage]}");
        } else {
          messages.add("replay:Sorry, I don't have an answer for this question");
        }
        _controller.clear();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Whatsapp Chat'),
      ),
      body: Container(decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://img.freepik.com/free-photo/smartphone-nature-concept_23-2150246070.jpg?t=st=1733703959~exp=1733707559~hmac=e11e925e682ede002ef4cfd43220b73c5f144269b59ee0e10d6dbcef83d40a4f&w=360'),
          fit: BoxFit.cover,
        ),
      ),
        child: Column(
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
                          onPressed: () => sendMessage,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    ),);
  }
}
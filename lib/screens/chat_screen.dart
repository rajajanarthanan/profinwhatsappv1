import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chat_types ;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';


class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late chat_types.User user;
  late List<chat_types.Message> messages;


  @override
  void initState() {
    super.initState();
    user = chat_types.User(id: 'user1');
    messages = [
      chat_types.TextMessage(
        author: user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: 'msg1',
        text: 'Hello! How can I help you today?',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
          style : TextStyle(fontSize : 24, fontWeight : FontWeight.bold),
           textAlign : TextAlign.center,
           ),
      ),
      body: Chat(
        messages: messages,
        onSendPressed: (chat_types.PartialText message) {
          print('Message sent: ${message.text}');
          // Add the sent message to the list of messages
          setState(() {
            messages.add(chat_types.TextMessage(
              author: user,
              createdAt: DateTime.now().millisecondsSinceEpoch,
              id: 'msg1',
              text: message.text,
            ));
          });
        },
        user: user,
      ),
    );
  }
}

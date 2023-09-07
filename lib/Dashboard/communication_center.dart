import 'package:flutter/material.dart';

import '../AppBar/app_bar.dart';

class CommunicationCenterScreen extends StatefulWidget {
  @override
  State<CommunicationCenterScreen> createState() =>
      _CommunicationCenterScreenState();
}

class _CommunicationCenterScreenState extends State<CommunicationCenterScreen> {
  TextEditingController _messageController = TextEditingController();
  List<Message> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(title: 'Communication Center'),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MessageBubble(message: _messages[index]);
                  },
                ),
              ),
              SizedBox(width: 500.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {
                        // Implement logic to send the message
                        String messageText = _messageController.text;
                        if (messageText.isNotEmpty) {
                          setState(() {
                            _messages.add(
                                Message(text: messageText, isDoctor: true));
                          });
                          // Clear the input field
                          _messageController.clear();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Centered logo overlay with opacity
          Center(
            child: Opacity(
              opacity: 0.3, // Adjust opacity as needed (0.0 to 1.0)
              child: Image.asset(
                'images/SMS_3.png', // Replace with your logo asset path
                width: 220, // Adjust the size as needed
                height: 220,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isDoctor;

  Message({required this.text, required this.isDoctor});
}

class MessageBubble extends StatelessWidget {
  final Message message;

  MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment:
            message.isDoctor ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            color: message.isDoctor ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: EdgeInsets.all(12.0),
          child: Text(
            message.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}

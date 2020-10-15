import 'package:chat_app/handlingMessages.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessages> _messages = <ChatMessages> [];

  void _handeSubmission(String text) {
    _textController.clear();
    ChatMessages message = ChatMessages(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(color: Colors.blue),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Flexible(
                child: TextField(
                  onSubmitted: _handeSubmission,
                  controller: _textController,
                  style: TextStyle(fontSize: 20.0),
                  decoration:
                      InputDecoration.collapsed(hintText: "Send a message"),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _handeSubmission(_textController.text),
                ),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            )),
        Divider(height: 1.0),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}

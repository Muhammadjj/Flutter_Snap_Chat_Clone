import 'package:flutter/material.dart';
import 'package:snap_chat_clone/Pages/Chat/Components/custom_chat_app_bar.dart';

import 'Components/chat_other_files.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    var sizeHeight = MediaQuery.sizeOf(context).height;
    var sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: const CustomChatAppBar(),
      body: getBody(sizeHeight, sizeWidth),
    );
  }
}

import 'package:drug_delivery_application/screens/Chat/ChatCard/ChatCard.dart';
import 'package:drug_delivery_application/screens/user/CustomAppbar/CustomAppbar.dart';
import 'package:flutter/material.dart';

import '../user/CustomAppbar/IconAppBar.dart';

class ChatList extends StatefulWidget {
  ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: IconAppBar('Messages', 93, 'assets/images/newmessage.svg'),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ChatCard();
          },
        ),
      ),
    );
  }
}

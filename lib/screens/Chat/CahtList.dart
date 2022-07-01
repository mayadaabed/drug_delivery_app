import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drug_delivery_application/screens/Chat/ChatCard/ChatCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../backend/firebase.dart';
import '../user/CustomAppbar/IconAppBar.dart';
import '../user/Medications/appBar/AppBars.dart';
import 'chatroom.dart';

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
        appBar: AppBars('messages'.tr, false, 93, true, 90),
        body: StreamBuilder(
            stream: getchatlist(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return snapshot.hasData
                  ? ListView.builder(
                      itemCount: snapshot.data!.size,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // **
                            updatchatstatuse(
                                snapshot.data!.docs[index]['chatRoomId']);
                            print(snapshot.data!.docs[index]['chatRoomId']);
                            print(snapshot.data!.docs[index]['useridrecive']);
                            Get.to(() => ChatRoom(
                                  snapshot.data!.docs[index]['useridrecive'],
                                  snapshot.data!.docs[index]['morslname'],
                                  snapshot.data!.docs[index]['imageurl'],
                                ));
                          },
                          child: ChatCard(
                            snapshot.data!.docs[index]['creatdate'],
                            snapshot.data!.docs[index]['detailes'],
                            snapshot.data!.docs[index]['morslname'],
                            snapshot.data!.docs[index]['mostakblename'],
                            snapshot.data!.docs[index]['useridrecive'],
                            snapshot.data!.docs[index]['state'],
                            snapshot.data!.docs[index]['imageurl'],
                          ),
                        );
                      },
                    )
                  : Text('');
            }),
      ),
    );
  }
}

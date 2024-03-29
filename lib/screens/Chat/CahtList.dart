import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drug_delivery_application/screens/Chat/ChatCard/ChatCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../backend/firebase.dart';
import '../../helpers/theme.dart';
import 'chatroom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                border: Border.all(color: grey2),
                color: mainColor),
            child: Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 110.w,
                  ),
                  Text(
                    'messages'.tr,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: white,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(93.h),
        ),
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
                                  snapshot.data!.docs[index]['mostakblename'],
                                  snapshot.data!.docs[index]['pharmimage'],
                                ));
                          },
                          child: ChatCard(
                            snapshot.data!.docs[index]['creatdate'],
                            snapshot.data!.docs[index]['detailes'],
                            snapshot.data!.docs[index]['morslname'],
                            snapshot.data!.docs[index]['mostakblename'],
                            snapshot.data!.docs[index]['useridrecive'],
                            snapshot.data!.docs[index]['state'],
                            snapshot.data!.docs[index]['pharmimage'],
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

import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatCard extends StatefulWidget {
  ChatCard({Key? key}) : super(key: key);

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          margin: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              width: 54.w,
              height: 54.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/avatar.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Janat xe',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: montserratBold,
                          color: black),
                    ),
                    SizedBox(
                      width: 160.w,
                    ),
                    Row(
                      children: [
                        Text(
                          '9:23',
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: montserratBold,
                              color: HexColor('#8C8C8C')),
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: HexColor('#ACACAC'),
                          size: 13.w,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 35.h,
                  width: 250.w,
                  child: Text(
                    'Hello ahmed, How can I help you ?Hello ahmed, How can I help you ?',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: montserratBold,
                        color: HexColor('#8C8C8C')),
                  ),
                ),
              ],
            )
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 20.w),
          height: 1.h,
          color: HexColor('#0D0925').withOpacity(.1),
        )
      ],
    );
  }
}

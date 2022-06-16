import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../helpers/theme.dart';

class DetailsCard extends StatefulWidget {
  DetailsCard({Key? key}) : super(key: key);

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.h,
      width: 345.w,
      margin: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: HexColor('#F9F9F9')),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 77.w,
              height: 33.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/contactBack.png'),
                      fit: BoxFit.fill)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/images/sms-messages.svg'),
                    SvgPicture.asset('assets/images/phone-call.svg'),
                    SvgPicture.asset('assets/images/whatsapp-color.svg'),
                  ]),
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/pharmacy.png',
                height: 153.h,
                width: 153.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Al-Zant pharamcy',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: HexColor('#196737'))),
                  SizedBox(height: 13.h),
                  Text('Gaza - Al-Wahda Street',
                      style: TextStyle(fontSize: 13.sp, color: grey2)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../helpers/theme.dart';
import '../../Medications/appBar/AppBars.dart';

class ChangeAddress extends StatefulWidget {
  ChangeAddress({Key? key}) : super(key: key);

  @override
  State<ChangeAddress> createState() => _ChangeAddressState();
}

class _ChangeAddressState extends State<ChangeAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBars('Address', false, 93, true, 101),
        body: ListView(padding: EdgeInsets.only(bottom: 50.h), children: [
          Padding(
            padding: EdgeInsets.only(top: 37.h, left: 20.w, right: 20.w),
            child: Row(children: [
              SvgPicture.asset('assets/images/locationround.svg'),
              SizedBox(width: 15.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home Adress',
                    style: TextStyle(
                        color: black,
                        fontSize: 14.sp,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '''Gaza, Al Remal -Ahmed Abd El Azeez
Street next to AlKenz Mosque''',
                    style: TextStyle(
                        color: HexColor('#A8A8A8'),
                        fontSize: 12.sp,
                        fontFamily: poppins),
                  ),
                ],
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
            child: Text(
              'Change Address',
              style: TextStyle(
                  color: black,
                  fontSize: 16.sp,
                  fontFamily: montserratBold,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 17.h),
            child: Align(
                alignment: Alignment.topLeft,
                child: TextField(
                  cursorColor: mainColor,
                  maxLines: 5,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGrey2),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGrey2),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 52.h,
                width: 224.h,
                margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 54.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: mainColor),
                child: Center(
                    child: Text(
                  'Change Address',
                  style: TextStyle(
                    color: white,
                    fontSize: 14.sp,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w600,
                  ),
                ))),
          ),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../helpers/theme.dart';

class MyOrdersCard extends StatefulWidget {
  MyOrdersCard({Key? key}) : super(key: key);

  @override
  State<MyOrdersCard> createState() => _MyOrdersCardState();
}

class _MyOrdersCardState extends State<MyOrdersCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 223.h,
        width: 344.w,
        margin: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(13.0),
          border: Border.all(
            color: HexColor('#D1D1D1'),
            width: 1.0,
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h),
            child: Text(
              'Order #3455',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: montserratBold,
                  fontWeight: FontWeight.w600,
                  color: mainGreen),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 7.h),
            child: Text(
              'Delivered on 12 Feb 2022',
              style: TextStyle(
                  fontSize: 12.sp, fontFamily: montserratBold, color: black),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6.w, right: 6.w, top: 9.h),
            height: 1.h,
            width: 324.w,
            color: HexColor('#D1D1D1'),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              SizedBox(width: 12.w),
              SvgPicture.asset('assets/images/market.svg'),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Musallam pharmacy',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: poppins,
                        color: black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '3 Items : Delivery Time  30 Min',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: poppins,
                        color: HexColor('#A8A8A8')),
                  ),
                ],
              ),
              SizedBox(width: 40.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: poppins,
                        color: HexColor('#64AEDE'),
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 39.h,
                        width: 39.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: HexColor('#D1D1D1')),
                            color: white),
                        child: Center(
                          child: Image.asset('assets/images/med.png'),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        height: 39.h,
                        width: 39.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: HexColor('#D1D1D1')),
                            color: white),
                        child: Center(
                          child: Text(
                            '+2',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: poppins,
                                fontWeight: FontWeight.w600,
                                color: HexColor('#063E6E')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 15.h),
          Center(
            child: Container(
              height: 45.h,
              width: 261.w,
              decoration: BoxDecoration(
                  color: HexColor('#C5DBB2'),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/manual-task.svg'),
                  SizedBox(width: 10.w),
                  Text(
                    'Reorder',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        color: mainGreen,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}

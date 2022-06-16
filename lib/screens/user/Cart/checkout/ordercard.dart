import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../helpers/theme.dart';

class OrderCard extends StatefulWidget {
  OrderCard({Key? key}) : super(key: key);

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 75.h,
      margin: EdgeInsets.only(top: 5.h, bottom: 20.w, left: 20.w),
      child: Row(
        children: [
          Container(
            width: 74.45.w,
            height: 74.45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.w),
            ),
            child: Center(
              child: Image.asset('assets/images/med.png'),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Strepsils',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: black1,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 5.h),
            Text('10₪',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: mainGreen,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 5.h),
            Container(
                height: 20.h,
                width: 29.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.w),
                  border: Border.all(color: lightGrey2, width: 1.w),
                ),
                child: Center(
                    child: Text('1',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: black1,
                            fontFamily: montserratBold,
                            fontWeight: FontWeight.w600))))
          ])
        ],
      ),
    );
  }
}

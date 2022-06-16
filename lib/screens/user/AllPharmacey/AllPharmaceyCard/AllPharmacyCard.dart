import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../helpers/theme.dart';

class AllPharmceycard extends StatefulWidget {
  AllPharmceycard({Key? key}) : super(key: key);

  @override
  State<AllPharmceycard> createState() => _AllPharmceycardState();
}

class _AllPharmceycardState extends State<AllPharmceycard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.h,
      width: 345.w,
      margin: EdgeInsets.only(top: 30.h, left: 15.w, right: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: HexColor('#F9F9F9')),
      child: Row(
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
    );
  }
}

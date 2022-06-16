import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../helpers/theme.dart';

class RelatedCard extends StatefulWidget {
  RelatedCard({Key? key}) : super(key: key);

  @override
  State<RelatedCard> createState() => _RelatedCardState();
}

class _RelatedCardState extends State<RelatedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      width: 95.w,
      margin: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Column(
        children: [
          Image.asset(
            'assets/images/strepsils.png',
            height: 70.h,
          ),
          SizedBox(height: 2.h),
          Text(
            '''Strespsils 
Hexylres''',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 11.sp,
                color: HexColor('#666769'),
                fontFamily: montserratBold,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 2.h),
          Text(
            '₪10',
            style: TextStyle(
                color: HexColor('#196737'),
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
                fontFamily: montserratBold),
          ),
        ],
      ),
    );
  }
}

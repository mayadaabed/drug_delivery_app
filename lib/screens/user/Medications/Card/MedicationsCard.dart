import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../helpers/theme.dart';

class MedicationsCard extends StatefulWidget {
  MedicationsCard({Key? key}) : super(key: key);

  @override
  State<MedicationsCard> createState() => _MedicationsCardState();
}

class _MedicationsCardState extends State<MedicationsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185.h,
      width: 141.w,
      margin: EdgeInsets.only(left: 10.w, right: 10.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(3, 25),
            ),
          ],
          color: HexColor('#FAFBFB')),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Image.asset('assets/images/medicines.png'),
          SizedBox(height: 10.h),
          Text(
            'Pandol cold & Flu',
            style: TextStyle(
                color: HexColor('#666769'),
                fontSize: 11.sp,
                fontFamily: montserratBold),
          ),
          SizedBox(height: 10.h),
          Text(
            '₪12.00',
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

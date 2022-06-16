import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class FilterCard extends StatefulWidget {
  final bool isSelected;
  FilterCard(this.isSelected, {Key? key}) : super(key: key);

  @override
  State<FilterCard> createState() => _FilterCardState();
}

class _FilterCardState extends State<FilterCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49.h,
      width: 124.w,
      margin: EdgeInsets.only(left: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: widget.isSelected ? mainColor : HexColor('#E6E6E6'),
      ),
      child: Center(
        child: Text('Al-Zant',
            style: TextStyle(
                color: widget.isSelected ? white : HexColor('#666769'),
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                fontFamily: montserratBold)),
      ),
    );
  }
}

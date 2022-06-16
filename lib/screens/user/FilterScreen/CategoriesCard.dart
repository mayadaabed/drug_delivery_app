import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../helpers/theme.dart';

class CategoriesCard extends StatefulWidget {
  final bool isSelected;
  CategoriesCard(this.isSelected, {Key? key}) : super(key: key);

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
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
        child: Text('Medication',
            style: TextStyle(
                color: widget.isSelected ? white : HexColor('#666769'),
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                fontFamily: montserratBold)),
      ),
    );
  }
}

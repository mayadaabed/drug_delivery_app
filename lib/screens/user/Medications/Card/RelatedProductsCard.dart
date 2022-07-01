import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../helpers/theme.dart';
import '../../../../helpers/utile.dart';

class RelatedCard extends StatefulWidget {
  final String id;
  final String name;
  final String image;
  final String price;
  final String description;
  final String categoryId;
  final String avalibilty;
  final String howToUse;
  final String pharmId;
  RelatedCard(this.id, this.name, this.image, this.price, this.description,
      this.categoryId, this.avalibilty, this.howToUse, this.pharmId,
      {Key? key})
      : super(key: key);

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
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: WidgetRelease.getInstance().cashed(
              widget.image,
              70,
              70,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            widget.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 11.sp,
                color: HexColor('#666769'),
                fontFamily: montserratBold,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 2.h),
          Text(
            '₪${widget.price}',
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

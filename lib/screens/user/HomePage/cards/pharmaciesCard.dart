import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../helpers/theme.dart';

class PharmaciesCard extends StatefulWidget {
  PharmaciesCard({Key? key}) : super(key: key);

  @override
  State<PharmaciesCard> createState() => _PharmaciesCardState();
}

class _PharmaciesCardState extends State<PharmaciesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 150.w,
      margin: EdgeInsets.only(left: 10.w, right: 10.w),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: white),
      child: Image.asset('assets/images/pharmacy.png'),
    );
  }
}

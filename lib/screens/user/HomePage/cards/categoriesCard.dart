import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesCard extends StatefulWidget {
  CategoriesCard({Key? key}) : super(key: key);

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 150.w,
      margin: EdgeInsets.only(left: 10.w, right: 10.w),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('assets/images/medicines.png'),
          SizedBox(height: 20.h),
          Container(
            height: 40.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/medback.png'),
                    fit: BoxFit.fill)),
            child: Center(
              child: Text(
                'Medication',
                style: TextStyle(
                    color: white, fontSize: 15.sp, fontFamily: montserratBold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

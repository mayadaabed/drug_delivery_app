import 'package:drug_delivery_application/screens/user/CustomAppbar/CustomAppbar.dart';
import 'package:drug_delivery_application/screens/user/HomePage/cards/categoriesCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../helpers/theme.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const CustomAppbar(false),
          body: ListView(
            padding: EdgeInsets.only(bottom: 50.h),
            children: [
              Padding(
                padding: EdgeInsets.only(top: 33.h, left: 26.w, right: 26.w),
                child: Text(
                  'All Categories',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: mainColor,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: GridView.builder(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 50),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {}, child: CategoriesCard());
                  },
                ),
              )
            ],
          )),
    );
  }
}

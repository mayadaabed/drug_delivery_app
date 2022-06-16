import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/user/HomePage/cards/categoriesCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmCategories extends StatefulWidget {
  PharmCategories({Key? key}) : super(key: key);

  @override
  State<PharmCategories> createState() => _PharmCategoriesState();
}

class _PharmCategoriesState extends State<PharmCategories> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        //  appBar: const CustomAppbar(false),
          body: ListView(
            padding: EdgeInsets.only(bottom: 50.h),
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35.h, left: 26.w, right: 26.w, bottom: 33.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children :<Widget> [
                    Text(
                  'All Categories',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: mainColor,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w800),),  
                          Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Text("Edit", style: TextStyle(color: mainColor, fontWeight:FontWeight.bold)),
                       SizedBox(width: 5.w,),
                       Icon(Icons.edit_note_sharp, color: mainColor,)
                      ],
                    )
                  ]
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
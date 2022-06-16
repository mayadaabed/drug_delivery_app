import 'package:drug_delivery_application/screens/user/FilterScreen/FilterCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../helpers/theme.dart';
import '../CustomAppbar/CustomAppbar.dart';
import 'CategoriesCard.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isSelected = false;
  bool isSelectedPharm = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const CustomAppbar(false),
            body: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w),
                  child: Row(
                    children: [
                      Container(
                        height: 36.h,
                        width: 96.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: HexColor('#CECECE').withOpacity(.5),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,
                                  color: HexColor('#666769'), size: 12),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                'Filter',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: montserratBold,
                                    color: HexColor('#666769')),
                              ),
                            ]),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        height: 36.h,
                        width: 96.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: HexColor('#CECECE').withOpacity(.5),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Al-Zant',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: montserratBold,
                                    color: HexColor('#666769')),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Container(
                                height: 16.h,
                                width: 16.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor('#047725'),
                                ),
                                child:
                                    Icon(Icons.close, color: white, size: 12),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 133.h),
                    alignment: Alignment.bottomCenter,
                    height: 595.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.w),
                          topRight: Radius.circular(20.w),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, -3),
                              blurRadius: 10),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 36.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Pharmacies',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: montserratBold,
                                  color: mainGreen),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        SizedBox(
                          height: 60.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelectedPharm = !isSelectedPharm;
                                    });
                                  },
                                  child: FilterCard(isSelectedPharm));
                            },
                          ),
                        ),
                        SizedBox(height: 45.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Categories',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: montserratBold,
                                  color: mainGreen),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        SizedBox(
                          height: 60.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelected = !isSelected;
                                    });
                                  },
                                  child: CategoriesCard(isSelected));
                            },
                          ),
                        ),
                      ],
                    ))
              ],
            )));
  }
}

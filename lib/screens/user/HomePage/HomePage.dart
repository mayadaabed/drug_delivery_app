import 'package:badges/badges.dart';
import 'package:drug_delivery_application/screens/user/FilterScreen/FilterScreen.dart';
import 'package:drug_delivery_application/screens/user/HomePage/cards/pharmaciesCard.dart';
import 'package:drug_delivery_application/screens/user/Medications/Medications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../helpers/theme.dart';
import '../AllPharmacey/AllPharmacey.dart';
import '../Categories/Categories.dart';
import '../UserProfile/ProfileScreens/Notifications/Notifications.dart';
import 'cards/categoriesCard.dart';
import 'carouslimag.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Drug Delivery',
                  style: TextStyle(
                      fontSize: 24.sp,
                      color: mainColor,
                      fontFamily: poppins,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => Notifications());
                  },
                  child: Badge(
                      badgeColor: HexColor('#D4721B'),
                      elevation: 0,
                      position: BadgePosition.topStart(start: 8, top: 2),
                      child:
                          SvgPicture.asset('assets/images/notification.svg')),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => FilterScreen());
            },
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 3.0,
                    shadowColor: black,
                    child: TextField(
                      enabled: false,
                      cursorColor: mainColor,
                      decoration: InputDecoration(
                        hintText: 'Search medicine available.',
                        isDense: true,
                        filled: true,
                        fillColor: white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: Icon(
                          Icons.tune_rounded,
                          color: HexColor('#196737'),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: TextStyle(
                            color: HexColor('#196737'),
                            fontSize: 14.sp,
                            fontFamily: montserratBold),
                      ),
                    ),
                  )),
            ),
          ),
          const Carouslimg('assets/images/cursol.png'),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: mainColor,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w800),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => Categories());
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: HexColor('#666769'),
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Get.to(() => Medications());
                    },
                    child: CategoriesCard());
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 35.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pharmacies',
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: mainColor,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w800),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => AllPharmacey());
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: HexColor('#666769'),
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return PharmaciesCard();
              },
            ),
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}

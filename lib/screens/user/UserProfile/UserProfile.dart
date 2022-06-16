import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/Login/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'ProfileScreens/Favorite/Favourite.dart';
import 'ProfileScreens/MyOrders/MyOrders.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(padding: EdgeInsets.only(bottom: 50.h), children: [
          Container(
              height: 173.h,
              width: double.infinity,
              decoration: BoxDecoration(color: mainColor),
              child: Stack(children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/images/newmessage.svg'),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ahmed kh',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: white,
                            fontFamily: montserratBold,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('Ahmed.kh@gmail.com',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: white,
                            fontFamily: montserratBold,
                          )),
                    ],
                  ),
                )
              ])),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 45.w),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/home (4).svg'),
                    SizedBox(width: 16.w),
                    Text(
                      'Change Address',
                      style: TextStyle(
                          color: HexColor('#393939'),
                          fontSize: 14.sp,
                          fontFamily: poppins,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: HexColor('#D1D1D1'),
              )
            ],
          ),
          InkWell(
            onTap: () {
              Get.to(() => MyOrders());
            },
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 21.w),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/shopping-bag (2).svg'),
                      SizedBox(width: 16.w),
                      Text(
                        'My Orders',
                        style: TextStyle(
                            color: HexColor('#393939'),
                            fontSize: 14.sp,
                            fontFamily: poppins,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 1.h,
                  width: double.infinity,
                  color: HexColor('#D1D1D1'),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => Favourite());
            },
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 21.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/heart (3).svg'),
                          SizedBox(width: 16.w),
                          Text(
                            'Favourites',
                            style: TextStyle(
                                color: HexColor('#393939'),
                                fontSize: 14.sp,
                                fontFamily: poppins,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Text(
                        '3 items',
                        style: TextStyle(
                            color: HexColor('#393939'),
                            fontSize: 12.sp,
                            fontFamily: montserratBold,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 1.h,
                  width: double.infinity,
                  color: HexColor('#D1D1D1'),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 21.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/bell.svg'),
                        SizedBox(width: 16.w),
                        Text(
                          'Get Notification',
                          style: TextStyle(
                              color: HexColor('#393939'),
                              fontSize: 14.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    FlutterSwitch(
                      height: 20.0,
                      width: 40.0,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      activeColor: mainColor,
                      value: _switchValue,
                      onToggle: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: HexColor('#D1D1D1'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 21.w),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/rateus.svg'),
                    SizedBox(width: 16.w),
                    Text(
                      'Rate us',
                      style: TextStyle(
                          color: HexColor('#393939'),
                          fontSize: 14.sp,
                          fontFamily: poppins,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: HexColor('#D1D1D1'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 21.w),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/question.svg'),
                    SizedBox(width: 16.w),
                    Text(
                      'Help',
                      style: TextStyle(
                          color: HexColor('#393939'),
                          fontSize: 14.sp,
                          fontFamily: poppins,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: HexColor('#D1D1D1'),
              )
            ],
          ),
          InkWell(
            onTap: () {
              Get.offAll(() => Login(1));
            },
            child: Padding(
              padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 21.w),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/logout (1).svg'),
                  SizedBox(width: 16.w),
                  Text(
                    'Log Out',
                    style: TextStyle(
                        color: HexColor('#393939'),
                        fontSize: 14.sp,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

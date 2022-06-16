import 'package:drug_delivery_application/screens/user/Cart/DoneOrder/DoneOrder.dart';
import 'package:drug_delivery_application/screens/user/Cart/checkout/ordercard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../helpers/theme.dart';
import '../../Medications/appBar/AppBars.dart';
import 'package:expandable/expandable.dart';

class CheckOut extends StatefulWidget {
  CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBars('Checkout', false, 93, true, 101),
        body: ListView(padding: EdgeInsets.only(bottom: 50.h), children: [
          Padding(
            padding: EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w),
            child: ExpandablePanel(
              header: Text(
                'Shipping Address',
                style: TextStyle(
                    color: HexColor('#3D3E41'),
                    fontSize: 16.sp,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w700),
              ),
              collapsed: ListView(
                shrinkWrap: true,
                children: [
                  Row(children: [
                    Text(
                      'Name :',
                      style: TextStyle(
                          color: HexColor('#A8A8A8'),
                          fontSize: 12.sp,
                          fontFamily: montserratBold),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Ahmed kh',
                      style: TextStyle(
                          color: HexColor('#A8A8A8'),
                          fontSize: 12.sp,
                          fontFamily: montserratBold),
                    ),
                  ]),
                  SizedBox(height: 10.h),
                  Row(children: [
                    Text(
                      'Email :',
                      style: TextStyle(
                          color: HexColor('#A8A8A8'),
                          fontSize: 12.sp,
                          fontFamily: montserratBold),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Ahmed-kh@gmail.com',
                      style: TextStyle(
                          color: HexColor('#A8A8A8'),
                          fontSize: 12.sp,
                          fontFamily: montserratBold),
                    ),
                  ]),
                  SizedBox(height: 10.h),
                  Row(children: [
                    Text(
                      'Phone number :',
                      style: TextStyle(
                          color: HexColor('#A8A8A8'),
                          fontSize: 12.sp,
                          fontFamily: montserratBold),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      '+972595954300',
                      style: TextStyle(
                          color: HexColor('#A8A8A8'),
                          fontSize: 12.sp,
                          fontFamily: montserratBold),
                    ),
                  ]),
                  SizedBox(height: 20.h),
                  Row(children: [
                    SvgPicture.asset('assets/images/market.svg'),
                    SizedBox(width: 15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Musallam pharmacy',
                          style: TextStyle(
                              color: black,
                              fontSize: 14.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '3 Items : Delivery Time  30 Min',
                          style: TextStyle(
                              color: HexColor('#A8A8A8'),
                              fontSize: 12.sp,
                              fontFamily: poppins),
                        ),
                      ],
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(left: 7.w),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset('assets/images/line.svg')),
                  ),
                  Row(children: [
                    SvgPicture.asset('assets/images/locationround.svg'),
                    SizedBox(width: 15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Home Adress',
                          style: TextStyle(
                              color: black,
                              fontSize: 14.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '''Gaza, Al Remal -Ahmed Abd El Azeez
Street next to AlKenz Mosque''',
                          style: TextStyle(
                              color: HexColor('#A8A8A8'),
                              fontSize: 12.sp,
                              fontFamily: poppins),
                        ),
                      ],
                    ),
                  ]),
                  SizedBox(height: 20.h),
                  Container(
                    height: 1.h,
                    width: 335.w,
                    color: HexColor('#C3C3C3'),
                  )
                ],
              ),
              expanded: Text(''),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h, right: 30.w, left: 30.w),
            child: Text(
              'Order details',
              style: TextStyle(
                  color: HexColor('#3D3E41'),
                  fontSize: 16.sp,
                  fontFamily: montserratBold,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 22.h),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  OrderCard(),
                  Container(
                    height: .5.h,
                    width: 335.w,
                    margin: EdgeInsets.only(left: 13.w, right: 13.w),
                    color: HexColor('#C3C3C3'),
                  ),
                  SizedBox(height: 22.h),
                ],
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h, right: 30.w, left: 30.w),
            child: Text(
              'NOTE:',
              style: TextStyle(
                  color: HexColor('#3D3E41'),
                  fontSize: 16.sp,
                  fontFamily: montserratBold,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, right: 30.w, left: 30.w),
            child: Text(
              '''Deleivery cost will be paid ON
Deleivery''',
              style: TextStyle(
                  color: HexColor('#A8A8A8'),
                  fontSize: 14.sp,
                  fontFamily: poppins),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h, right: 30.w, left: 30.w),
            child: Text(
              'Your note',
              style: TextStyle(
                  color: HexColor('#3D3E41'),
                  fontSize: 16.sp,
                  fontFamily: montserratBold,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
            child: Align(
                alignment: Alignment.topLeft,
                child: TextField(
                  cursorColor: mainColor,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Write your note',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGrey2),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGrey2),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    labelStyle: TextStyle(
                        color: lightGrey,
                        fontSize: 14.sp,
                        fontFamily: montserratBold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => DoneOrder());
            },
            child: Container(
                height: 50.h,
                width: 224.h,
                margin: EdgeInsets.only(left: 55.w, right: 55.w, top: 15.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: mainColor),
                child: Center(
                    child: Text(
                  'Checkout',
                  style: TextStyle(
                    color: white,
                    fontSize: 14.sp,
                    fontFamily: poppins,
                  ),
                ))),
          ),
        ]));
  }
}

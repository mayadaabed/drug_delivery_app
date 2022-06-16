import 'package:drug_delivery_application/screens/user/Cart/Cards/CartCard.dart';
import 'package:drug_delivery_application/screens/user/Cart/ChangeAddress/ChangeAddress.dart';
import 'package:drug_delivery_application/screens/user/Cart/checkout/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../helpers/theme.dart';
import '../Medications/appBar/AppBars.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBars('My Cart', false, 93, true, 110),
        body: ListView(padding: EdgeInsets.only(bottom: 50.h), children: [
          Container(
              height: 50.h,
              width: double.infinity,
              color: lightGrey.withOpacity(0.5),
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/location.svg'),
                        SizedBox(width: 10.w),
                        Text('remal st ,',
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontFamily: montserratBold,
                                color: black)),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => ChangeAddress());
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_drop_down_outlined,
                              color: black, size: 20.w),
                          SizedBox(width: 5.w),
                          Text('Change Address',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: montserratBold,
                                  color: HexColor('#7089F0'))),
                        ],
                      ),
                    ),
                  ])),
          Padding(
            padding: EdgeInsets.only(top: 15.h, left: 25.w, right: 15.w),
            child: Row(
              children: [
                Text('TOTAL',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: montserratBold,
                        color: black)),
                SizedBox(width: 29.w),
                Text('3 items',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        color: HexColor('#393939'))),
                SizedBox(width: 90.w),
                Container(
                  height: 31.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w),
                      color: HexColor('#3D3E41')),
                  child: Center(
                      child: Text(
                    'CLEAR CART',
                    style: TextStyle(
                      color: white,
                      fontSize: 13.sp,
                      fontFamily: montserratBold,
                    ),
                  )),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 22.h),
            height: .5.h,
            color: HexColor('#D1D1D1'),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CartCard(),
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    height: 1.h,
                    color: HexColor('#D1D1D1'),
                  ),
                ],
              );
            },
          ),
          Container(
            height: 63.h,
            width: 330.w,
            color: lightGrey.withOpacity(0.5),
            margin: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: black1,
                    fontSize: 14.sp,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => CheckOut());
                  },
                  child: Container(
                      height: 50.h,
                      width: 167.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          color: mainColor),
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
                Text(
                  '80.00₪',
                  style: TextStyle(
                    color: black1,
                    fontSize: 14.sp,
                    fontFamily: poppins,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}

import 'package:drug_delivery_application/screens/user/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../helpers/theme.dart';

class AddAddress extends StatefulWidget {
  final String name;
  const AddAddress(this.name, {Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    namecontroller.text = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
            child: Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset('assets/images/backarrow.svg')),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 50.h),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Add your Address',
                style: TextStyle(
                    fontSize: 24.sp,
                    color: black1,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Enter Your Name',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: HexColor('#0C0B0B'),
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w800),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: Align(
              alignment: Alignment.topLeft,
              child: TextField(
                controller: namecontroller,
                cursorColor: mainColor,
                decoration: InputDecoration(
                  labelText: 'Ahmed kh',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: lightGrey2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: lightGrey2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelStyle: TextStyle(
                      color: lightGrey,
                      fontSize: 14.sp,
                      fontFamily: montserratBold),
                ),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 30.h),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Add Address',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: HexColor('#0C0B0B'),
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w800),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: Align(
              alignment: Alignment.topLeft,
              child: TextField(
                controller: addresscontroller,
                cursorColor: mainColor,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Your Address',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: lightGrey2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: lightGrey2),
                    borderRadius: BorderRadius.circular(10),
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
            Get.to(() => HomePage());
          },
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 70.h),
            child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50.h,
                  width: 274.w,
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: montserratBold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(21)),
                )),
          ),
        ),
      ]),
    );
  }
}

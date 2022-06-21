import 'package:drug_delivery_application/screens/Login/Login.dart';
import 'package:drug_delivery_application/screens/VerfiyAccount/VerfiyAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../backend/firebase.dart';
import '../../helpers/theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  String phonee = "+970";

  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(bottom: 50.h),
          children: [
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
                    'Create Account',
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: black1,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 50.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: TextField(
                    controller: namecontroller,
                    cursorColor: mainColor,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: lightGrey2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: lightGrey2),
                      ),
                      labelStyle: TextStyle(
                          color: lightGrey,
                          fontSize: 14.sp,
                          fontFamily: montserratBold),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: TextField(
                    controller: emailcontroller,
                    cursorColor: mainColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: lightGrey2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: lightGrey2),
                      ),
                      labelStyle: TextStyle(
                          color: lightGrey,
                          fontSize: 14.sp,
                          fontFamily: montserratBold),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: TextField(
                    controller: passwordcontroller,
                    cursorColor: mainColor,
                    obscureText: visible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: lightGrey2),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visible = !visible;
                            });
                          },
                          icon: Icon(
                            visible == true
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: lightGrey2,
                          )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: lightGrey2),
                      ),
                      labelStyle: TextStyle(
                          color: lightGrey,
                          fontSize: 14.sp,
                          fontFamily: montserratBold),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 100.w,
                          padding: EdgeInsets.only(
                              left: 17.w, right: 17.w, top: 20.h),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: phonee,
                                hint: Text(
                                  phonee,
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: montserratBold,
                                      color: black),
                                ),
                                items: appGet.catNames.isNotEmpty
                                    ? (["+970", "+972"]).map((value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontFamily: montserratBold,
                                                color: black),
                                          ),
                                        );
                                      }).toList()
                                    : null,
                                onChanged: (newValue) {
                                  setState(() {
                                    phonee = newValue!;
                                    print(phonee);
                                  });
                                },
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 180.w,
                        child: TextField(
                          controller: phonecontroller,
                          cursorColor: mainColor,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: lightGrey2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: lightGrey2),
                            ),
                            labelStyle: TextStyle(
                                color: lightGrey,
                                fontSize: 14.sp,
                                fontFamily: montserratBold),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                if (namecontroller.text.toString().isEmpty) {
                  EasyLoading.showError('Please enter your name');
                } else if (emailcontroller.text.toString().isEmpty) {
                  EasyLoading.showError('Please enter your email');
                } else if (passwordcontroller.text.toString().isEmpty) {
                  EasyLoading.showError('Please enter your password');
                } else if (phonecontroller.text.toString().isEmpty) {
                  EasyLoading.showError('Please enter your phone number');
                } else {
                  registrationProcess(
                      name: namecontroller.text.toString(),
                      email: emailcontroller.text.toString(),
                      password: passwordcontroller.text.toString(),
                      mobile: phonee + phonecontroller.text.toString(),
                      address: '',
                      isUser: true);
                }
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
                          'Sign Up',
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
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account',
                  style: TextStyle(
                      color: grey2,
                      fontSize: 14.sp,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => Login(1));
                  },
                  child: Text(
                    ' Log In',
                    style: TextStyle(
                        color: green,
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

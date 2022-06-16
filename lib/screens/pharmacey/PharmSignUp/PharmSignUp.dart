import 'dart:io';

import 'package:drug_delivery_application/screens/pharmacey/PharmNavBar/PharmNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../backend/firebase.dart';
import '../../../helpers/theme.dart';
import '../../Login/Login.dart';
import 'package:image_picker/image_picker.dart';

class PharmSignUp extends StatefulWidget {
  PharmSignUp({Key? key}) : super(key: key);

  @override
  State<PharmSignUp> createState() => _PharmSignUpState();
}

class _PharmSignUpState extends State<PharmSignUp> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController openHourscontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  bool visible = true;

  XFile? pickedImages;
  String? base64Image;
  final ImagePicker picker = ImagePicker();
  Future getimagdata(BuildContext context) async {
    final imageSource = await showDialog<ImageSource>(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Image source",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 22.sp, fontFamily: montserratBold, color: black),
              ),
              actions: <Widget>[
                MaterialButton(
                  child: Text(
                    "Camera",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: montserratBold,
                        color: black),
                  ),
                  onPressed: () {
                    Navigator.pop(context, ImageSource.camera);
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Gallery",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: montserratBold,
                        color: black),
                  ),
                  onPressed: () {
                    Navigator.pop(context, ImageSource.gallery);
                  },
                )
              ],
            ));

    if (imageSource != null) {
      var imgfil = await picker.pickImage(source: imageSource);
      print('images is full');

      pickedImages = imgfil;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
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
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                getimagdata(context);
              },
              child: pickedImages == null
                  ? Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: lightGrey2,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.camera_alt,
                          color: grey,
                          size: 30,
                        ),
                      ))
                  : Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              // fit: BoxFit.fitWidth,
                              image: FileImage(
                            File(pickedImages!.path),
                          ))),
                    ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: TextField(
                    controller: namecontroller,
                    cursorColor: mainColor,
                    decoration: InputDecoration(
                      labelText: 'Pharmacy name',
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
                    controller: openHourscontroller,
                    cursorColor: mainColor,
                    decoration: InputDecoration(
                      labelText: 'Open Hours',
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
                    pharmName: namecontroller.text.toString(),
                    email: emailcontroller.text.toString(),
                    password: passwordcontroller.text.toString(),
                    mobile: phonecontroller.text.toString(),
                    address: '',
                    isUser: false,
                    openHours: openHourscontroller.text.toString(),
                  ).then((value) {
                    uploadImage(File(pickedImages!.path), userIds);
                  });
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
                    Get.to(() => Login(2));
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
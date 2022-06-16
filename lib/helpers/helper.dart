import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

successSanck(String title, String message) {
  Get.snackbar("", "",
      colorText: white,
      shouldIconPulse: true,
      titleText: Text(
        title,
        style: TextStyle(
            fontSize: 14.sp,
            color: white,
            fontWeight: FontWeight.w600,
            fontFamily: montserratBold),
      ),
      messageText: Text(
        message,
        style: TextStyle(
            fontSize: 14.sp, color: white, fontFamily: montserratBold),
      ),
      icon: Icon(Icons.check_rounded, size: 20, color: white),
      barBlur: 10,
      margin: const EdgeInsets.all(20),
      snackPosition: SnackPosition.TOP,
      isDismissible: true,
      backgroundColor: mainColor,
      duration: const Duration(seconds: 3));
}

import 'package:drug_delivery_application/screens/user/AllPharmacey/AllPharmaceyCard/AllPharmacyCard.dart';
import 'package:drug_delivery_application/screens/user/AllPharmacey/PharmaceyDetails/PharmaceyDetails.dart';
import 'package:drug_delivery_application/screens/user/CustomAppbar/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../helpers/theme.dart';

class AllPharmacey extends StatefulWidget {
  AllPharmacey({Key? key}) : super(key: key);

  @override
  State<AllPharmacey> createState() => _AllPharmaceyState();
}

class _AllPharmaceyState extends State<AllPharmacey> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: const CustomAppbar(true),
        body: Scaffold(
            body: ListView(
          padding: EdgeInsets.only(bottom: 50.h),
          children: [
            Padding(
              padding: EdgeInsets.only(top: 37.h, left: 21.w, right: 21.w),
              child: Text(
                'Showing 3 pharmacies',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: lightGrey,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Get.to(() => PharmaceyDetails());
                    },
                    child: AllPharmceycard());
              },
            )
          ],
        )),
      ),
    );
  }
}

import 'package:drug_delivery_application/screens/user/Medications/Card/MedicationsCard.dart';
import 'package:drug_delivery_application/screens/user/Medications/MedicationsDetails/MedicationsDetails.dart';
import 'package:drug_delivery_application/screens/user/Medications/appBar/AppBars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../helpers/theme.dart';

class Medications extends StatefulWidget {
  Medications({Key? key}) : super(key: key);

  @override
  State<Medications> createState() => _MedicationsState();
}

class _MedicationsState extends State<Medications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBars('Medications', true, 134, false, 90),
        body: ListView(
          padding: EdgeInsets.only(bottom: 50.h),
          children: [
            Padding(
              padding: EdgeInsets.only(top: 33.h, left: 26.w, right: 26.w),
              child: Text(
                'Showing items 8',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: lightGrey,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: GridView.builder(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 22),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Get.to(() => MedicationsDetails());
                      },
                      child: MedicationsCard());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

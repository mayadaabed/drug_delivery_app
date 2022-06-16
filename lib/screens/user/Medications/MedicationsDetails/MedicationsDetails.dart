import 'package:drug_delivery_application/screens/user/Medications/Card/RelatedProductsCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../helpers/Counter.dart';
import '../../../../helpers/helper.dart';
import '../../../../helpers/theme.dart';
import '../appBar/AppBars.dart';

class MedicationsDetails extends StatefulWidget {
  const MedicationsDetails({Key? key}) : super(key: key);

  @override
  State<MedicationsDetails> createState() => _MedicationsDetailsState();
}

class _MedicationsDetailsState extends State<MedicationsDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBars('Details', false, 93, true, 110),
        body: ListView(padding: EdgeInsets.only(bottom: 50.h), children: [
          Container(
              height: 266.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: white,
                gradient: LinearGradient(
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: [white, HexColor('#E2F6E5')]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin:
                          EdgeInsets.only(top: 29.h, right: 20.w, left: 20.w),
                      height: 25.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: HexColor('#ffcccc'),
                      ),
                      child: Center(
                          child: Icon(Icons.favorite,
                              size: 15, color: HexColor('#F03A16'))),
                    ),
                  ),
                  Center(child: Image.asset('assets/images/strepsils.png')),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: 24.h, left: 20.w, right: 20.w),
            child: Text(
              'Strespsils',
              style: TextStyle(
                  fontSize: 24.sp,
                  color: HexColor('#393939'),
                  fontFamily: montserratBold,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h, left: 20.w, right: 20.w),
            child: Text(
              '₪10',
              style: TextStyle(
                  color: HexColor('#196737'),
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: montserratBold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h, left: 20.w, right: 20.w),
            child: Row(
              children: [
                Text(
                  'Availablity: ',
                  style: TextStyle(
                      color: grey2,
                      fontSize: 16.sp,
                      fontFamily: montserratBold),
                ),
                Text(
                  'In stock',
                  style: TextStyle(
                      color: HexColor('#196737'),
                      fontSize: 16.sp,
                      fontFamily: montserratBold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h, left: 20.w, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select the quantity: ',
                  style: TextStyle(
                      color: grey2,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: montserratBold),
                ),
                Counter(),
                // Row(
                //   children: [
                //     Container(
                //       width: 32.w,
                //       height: 32.h,
                //       decoration: BoxDecoration(
                //         shape: BoxShape.rectangle,
                //         color: white,
                //         borderRadius: BorderRadius.circular(5),
                //         border: Border.all(
                //           color: HexColor('#393939'),
                //           width: 1,
                //         ),
                //       ),
                //       child: Center(
                //         child: Icon(Icons.remove,
                //             size: 15, color: HexColor('#393939')),
                //       ),
                //     ),
                //     SizedBox(width: 10.w),
                //     Text(
                //       '1',
                //       style: TextStyle(
                //           color: HexColor('#393939'),
                //           fontSize: 17.sp,
                //           fontWeight: FontWeight.w600,
                //           fontFamily: montserratBold),
                //     ),
                //     SizedBox(width: 10.w),
                //     Container(
                //       width: 32.w,
                //       height: 32.h,
                //       decoration: BoxDecoration(
                //         shape: BoxShape.rectangle,
                //         color: white,
                //         borderRadius: BorderRadius.circular(5),
                //         border: Border.all(
                //           color: HexColor('#393939'),
                //           width: 1,
                //         ),
                //       ),
                //       child: Center(
                //         child: Icon(Icons.add,
                //             size: 15, color: HexColor('#393939')),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.h, left: 8.w, right: 8.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    successSanck("Strespsils ", "have been added to cart");
                  },
                  child: Container(
                    height: 48.h,
                    width: 165.w,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Center(
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                            color: white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: montserratBold),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 7.w),
                Container(
                  height: 48.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    color: HexColor('#F2F2F2'),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      'BUY NOW',
                      style: TextStyle(
                          color: HexColor('#196737'),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: montserratBold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.h, left: 20.w, right: 20.w),
            child: Text(
              'Description',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: HexColor('#393939'),
                  fontFamily: montserratBold,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.h, left: 20.w, right: 20.w),
            child: Text(
              '''Strepsils Lemon Sugar Free lozenge contains ingredients for the symptomtic relief of mouth and throat infections These ingredients also help lubricate and soothe painful areas. ''',
              style: TextStyle(
                  fontSize: 12.sp,
                  color: HexColor('#626262'),
                  fontFamily: montserratBold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 45.h, left: 20.w, right: 20.w),
            child: Text(
              'How to use',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: HexColor('#393939'),
                  fontFamily: montserratBold,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.h, left: 20.w, right: 20.w),
            child: Text(
              '''Strepsils Lemon Sugar Free lozenge contains ingredients for the symptomtic relief of mouth and throat infections These ingredients also help lubricate and soothe painful areas. ''',
              style: TextStyle(
                  fontSize: 12.sp,
                  color: HexColor('#626262'),
                  fontFamily: montserratBold),
            ),
          ),
          Container(
            height: 1.h,
            margin: EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w),
            width: double.infinity,
            color: HexColor('#CECECE'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 17.h, left: 20.w, right: 20.w),
            child: Text(
              'Related Products',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: HexColor('#393939'),
                  fontFamily: montserratBold),
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 140.h,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return RelatedCard();
              },
            ),
          )
        ]),
      ),
    );
  }
}

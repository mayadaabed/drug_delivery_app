import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../helpers/Counter.dart';
import '../../../../helpers/theme.dart';

class CartCard extends StatefulWidget {
  CartCard({Key? key}) : super(key: key);

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      child: Row(children: [
        SizedBox(width: 20.w),
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.w),
            border: Border.all(color: HexColor('#D1D1D1'), width: 1.w),
          ),
          child: Image.asset('assets/images/medicines.png'),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Strepsils',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.bold,
                      color: black1),
                ),
                SizedBox(width: 150.w),
                SvgPicture.asset('assets/images/rubbish-bin.svg'),
              ],
            ),
            Text(
              '''Lemon Lozengis
 Sugar-Free 16''',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: poppins,
                  color: HexColor('#626262')),
            ),
            Row(
              children: [
                Text(
                  '10₪',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.bold,
                      color: black1),
                ),
                SizedBox(width: 105.w),
                Counter()
                // Row(
                //   children: [
                //     Container(
                //       width: 25.w,
                //       height: 25.h,
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
                //           fontSize: 13.sp,
                //           fontWeight: FontWeight.w600,
                //           fontFamily: poppins),
                //     ),
                //     SizedBox(width: 10.w),
                //     Container(
                //       width: 25.w,
                //       height: 25.h,
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
          ],
        )
      ]),
    );
  }
}

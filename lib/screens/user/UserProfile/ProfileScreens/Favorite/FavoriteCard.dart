import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../helpers/Counter.dart';

class FavoriteCard extends StatefulWidget {
  FavoriteCard({Key? key}) : super(key: key);

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.h,
      margin: EdgeInsets.only(top: 40.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Row(
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: HexColor('#D1D1D1'),
                      width: 1.0,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/med.png',
                  ),
                ),
                SizedBox(width: 6.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 193.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Strespsils',
                            style: TextStyle(
                                color: black1,
                                fontSize: 14.sp,
                                fontFamily: montserratBold,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '10₪',
                            style: TextStyle(
                                color: mainGreen,
                                fontSize: 12.sp,
                                fontFamily: montserratBold,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Lemon Lozengis Sugar-Free 16',
                      style: TextStyle(
                          color: HexColor('#B2B2B2'),
                          fontSize: 10.sp,
                          fontFamily: montserratBold),
                    ),
                    SizedBox(height: 33.h),
                    SizedBox(
                      width: 220.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Counter(),
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
                          Container(
                              height: 27.h,
                              width: 86.w,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 12.sp,
                                      fontFamily: montserratBold),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            height: 1.h,
            color: HexColor('#D1D1D1'),
          )
        ],
      ),
    );
  }
}

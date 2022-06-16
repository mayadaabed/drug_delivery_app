import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllOederCard extends StatefulWidget {
  AllOederCard({Key? key}) : super(key: key);

  @override
  _AllOederCardState createState() => _AllOederCardState();
}

class _AllOederCardState extends State<AllOederCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Center(
        child: Container(
          padding: EdgeInsets.only(
            right: 22.w,
            left: 28.w,
          ),
          width: 359.w,
          height: 202.h,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(13.r),
            border: Border.all(
              color: bordergrey,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 145.w,
                    height: 26.h,
                    decoration: BoxDecoration(
                      color: lightgreen,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                      child: Text(
                        'New Order Request',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: montserratBold,
                          color: mainColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '2m ago',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: montserratBold,
                      color: bordergrey,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order #3455',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: montserratBold,
                            color: black2,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 170.w,
                        height: 35.h,
                        child: Text(
                          '3 Items: Fructis,strespils and Garnier cream',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: poppins,
                            color: lightgrey1,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: poppins,
                          color: blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 83.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 39.w,
                              height: 39.h,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(
                                    color: bordergrey,
                                  )),
                              child: Image.asset(
                                'assets/images/medic.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                                width: 39.w,
                                height: 39.h,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(
                                      color: bordergrey,
                                    )),
                                child: Center(
                                  child: Text(
                                    '+2',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: poppins,
                                      color: darkblue,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Text(
                'Address',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: poppins,
                  color: black,
                ),
              ),
              SizedBox(
                width: 219.w,
                child: Text(
                  'Gaza, Al Remal -Ahmed Abd El Azeez Street next to AlKenz Mosque',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: poppins,
                    color: lightgrey1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

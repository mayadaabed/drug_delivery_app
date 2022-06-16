import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: minus,
          child: Container(
            width: 25.w,
            height: 25.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: HexColor('#393939'),
                width: 1,
              ),
            ),
            child: Center(
              child: Icon(Icons.remove, size: 15, color: HexColor('#393939')),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          '$_n',
          style: TextStyle(
              color: HexColor('#393939'),
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              fontFamily: poppins),
        ),
        SizedBox(width: 10.w),
        GestureDetector(
          onTap: () => add(),
          child: Container(
            width: 25.w,
            height: 25.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: HexColor('#393939'),
                width: 1,
              ),
            ),
            child: Center(
              child: Icon(Icons.add, size: 15, color: HexColor('#393939')),
            ),
          ),
        ),

        // FloatingActionButton(
        //   onPressed: minus,
        //   child: Icon(const IconData(0xe15b, fontFamily: 'MaterialIcons'),
        //       color: Colors.black),
        //   backgroundColor: Colors.white,
        // ),
      ],
    );
  }
}

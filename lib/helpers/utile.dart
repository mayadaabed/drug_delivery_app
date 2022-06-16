// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetRelease {
  static WidgetRelease Widgetinstable = WidgetRelease();

  static WidgetRelease getInstance() {
    if (Widgetinstable == null) {
      Widgetinstable = new WidgetRelease();
    }
    return Widgetinstable;
  }

  Widget loading() {
    return Center(
      child: Image.asset(
        'assets/images/loading.gif',
        width: (100).w,
        height: (100).h,
      ),
    );
  }
  
}

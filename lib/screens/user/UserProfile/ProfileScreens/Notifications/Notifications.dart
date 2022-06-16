import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';
import '../../../Medications/appBar/AppBars.dart';
import 'NotificationsCard.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List _elements = [
    {'name': 'John', 'group': 'Today'},
    {'name': 'Beth', 'group': 'Yesterday'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBars('Notifcation', false, 93, true, 98),
        body: GroupedListView<dynamic, String>(
          elements: _elements,
          groupBy: (element) => element['group'],
          groupSeparatorBuilder: (String groupByValue) => Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: Text(
              groupByValue,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: black,
                  fontFamily: poppins),
            ),
          ),
          itemBuilder: (context, dynamic element) => NotificationsCard(),
          itemComparator: (item1, item2) =>
              item1['name'].compareTo(item2['name']),
          useStickyGroupSeparators: false,
          floatingHeader: false,
          order: GroupedListOrder.ASC,
        ),

        // ListView.builder(
        //   padding: EdgeInsets.only(bottom: 50.h),
        //   itemCount: 4,
        //   itemBuilder: (context, index) {
        //     return NotificationsCard();
        //   },
        // ),
      ),
    );
  }
}

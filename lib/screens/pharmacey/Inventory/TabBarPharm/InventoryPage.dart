import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/pharmacey/Inventory/Category/Categories.dart';
import 'package:drug_delivery_application/screens/pharmacey/Inventory/Medicines/PharmMedicines.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Inventory extends StatefulWidget {
  Inventory({Key? key}) : super(key: key);

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 145.h,
              actions: [],
              title: Column(
                children: [
                  const Text(
                    "Inventory",
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Montserrat",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 3.0,
                          shadowColor: black,
                          child: TextField(
                            cursorColor: mainColor,
                            decoration: InputDecoration(
                              hintText: 'Search medicine available.',
                              isDense: true,
                              filled: true,
                              fillColor: white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: grey2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: Icon(
                                Icons.tune_rounded,
                                color: HexColor('#196737'),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintStyle: TextStyle(
                                  color: HexColor('#196737'),
                                  fontSize: 14.sp,
                                  fontFamily: montserratBold),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              backgroundColor: const Color.fromARGB(255, 118, 158, 73),

              elevation: 2,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(0))),

              //   bottom: AppBar(

              //    backgroundColor: const Color.fromARGB(255, 118, 158, 73) ,
              //    elevation: 2,
              //   shape: const RoundedRectangleBorder(borderRadius: const BorderRadius.vertical(
              //       bottom: const Radius.circular(20)
              //  )
              //  ),
              //    title: Container(
              //    width: double.infinity,
              //      height: 45,
              //      color: Colors.white,
              //      child: const Center(
              //        child: TextField(
              //          decoration: InputDecoration(
              //            hintText: "Search medicine available.",
              //            hintStyle: TextStyle(color: Color.fromARGB(255, 118, 158, 73),
              //            fontFamily: "Avenir-Medium",
              //            fontSize: 15,
              //            ),
              //              prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 118, 158, 73),),
              //             // suffixIcon: Icon(Icons.edit),
              //          ),
              //        ),
              //      ),
              //    ),
              // flexibleSpace:
              //      const TextField(
              //          decoration: InputDecoration(
              //            hintText: "Search medicine available.",
              //            hintStyle: TextStyle(color: Color.fromARGB(255, 118, 158, 73),
              //            fontFamily: "Avenir-Medium",
              //            fontSize: 15,
              //            ),),),
              bottom: TabBar(
                indicatorColor: white,
                tabs: [
                  Tab(
                    text: "Medicines",
                  ),
                  Tab(
                    text: "Categories",
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [PharmMedicines(), PharmCategories()],
            ),
          ),
        ));
  }
}
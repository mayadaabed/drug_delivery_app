// ignore_for_file: unnecessary_const

import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/pharmacey/Inventory/Category/Categories.dart';
import 'package:drug_delivery_application/screens/pharmacey/Inventory/Medicines/PharmMedicines.dart';
import 'package:drug_delivery_application/screens/user/Categories/Categories.dart';
import 'package:drug_delivery_application/screens/user/CustomAppbar/CustomAppbar.dart';
import 'package:drug_delivery_application/screens/user/Medications/Medications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      child: Scaffold(
        appBar:AppBar(
         centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          toolbarHeight: 85,
          actions: [
            IconButton(            
             icon: const Icon(Icons.shopping_cart),
             onPressed: (){},
             ),
          ],
          title: const Text("Inventory" , style: 
          const TextStyle(color: Colors.white,
          fontFamily: "Montserrat",
          fontSize: 20, fontWeight: FontWeight.bold
  
          ), 
          
          ),
           backgroundColor: const Color.fromARGB(255, 118, 158, 73),

          elevation: 2,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20)
       )
       ),

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
             Tab(text: "Medicines",),
             Tab(text: "Categories",)
           ],
           ),),
     
       body: TabBarView(
         children: [
           PharmMedicines(),
          PharmCategories()
         ],
       ),
       )
    );
    
  }
}
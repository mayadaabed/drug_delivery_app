import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';


class OrderDetailsCard extends StatefulWidget {
   OrderDetailsCard({Key? key}) : super(key: key);

  @override
  State<OrderDetailsCard> createState() => _OrderDetailsCardState();
}

class _OrderDetailsCardState extends State<OrderDetailsCard> {
    bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  <Widget>[

         Checkbox(
          tristate: true,
          value: this.value,
        
          shape: CircleBorder(),
          activeColor: mainColor,
          onChanged: (val){
            setState(() {
              value = val;
            });
          }
          ),

        Container(
             width: 60,
             height: 60,
            decoration: const BoxDecoration(
            
              
              image: DecorationImage(
                image: AssetImage('assets/images/med.png'),
                fit: BoxFit.cover
              ),
      
            ),
             ),

             Column(
              children:[
              Text("Strepsils", style: TextStyle(color: grey, fontSize: 16, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("10₪" , style: TextStyle(fontSize: 15),),
                  SizedBox(
                  height: 20,
                  width: 20,
                  ),
                  Container(
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                    color: bordergrey,
                                  )),
                              child: Text("2", textAlign: TextAlign.center,)
                              ),
                            
                ],
              ),
           


              ]
             )
        ],
      ),

    );
  }
}

 isChecked() {
 
}
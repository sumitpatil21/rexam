import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rexam/productdata.dart';
class Addtocart extends StatefulWidget {
  const Addtocart({super.key});

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      total=0;
      for(int i=0;i<cart.length;i++)
      {
        total=(total+cart[i]['price']).toInt();
      }
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back_ios,size: 20,)),
              ],
            ),
          ),
          SizedBox(height: 0,),
       Expanded(
         child: Column(
           children: [
             ...List.generate(cart.length, (index) => Container(
               margin: EdgeInsets.all(15),
               height: 150,
               width: 400,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.green,
                     blurRadius: 10,
                   )
                 ],
                 borderRadius: BorderRadius.circular(15),

               ),
               child: Row(
                 children: [
                   Container(
                     margin: EdgeInsets.all(15),
                     height: 130,
                     width: 150,
                     decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(15),
                         image: DecorationImage(
                             image: AssetImage(cart[index]["img"]),
                             fit: BoxFit.cover
                         )
                     ),
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(cart[index]['name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                       Text((cart[index]['price']).toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                       Text("⭐⭐⭐⭐",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)
                     ],
                   ),
                   SizedBox(width: 10,),
                   InkWell(
                     onTap: () {
                       setState(() {
                         cart.removeAt(index);
                       });
                     },
                     child: Container(
                       height: 100,
                       width: 50,
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(15)
                       ),
                       child: Center(
                         child: Icon(Icons.delete,size: 20,),
                       ),
                     ),
                   )
                 ],
               ),
             )),
             SizedBox(height: 10,),
             SingleChildScrollView(
               child: Container(
                 height: 150,
                 width: 400,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                   color: Colors.black
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(left: 130),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Total : "+"$total",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                       Text("Gst : "+"18%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                       Text("Delivery Charge : "+"Free",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                       Text("Total : "+"${totalamunt=(total*18/100+total).toInt()}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                     ],
                   ),
                 ),
               ),
             )
           ],
         ),
       )
        ],
      ),
    );
  }
}

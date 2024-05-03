import 'package:flutter/material.dart';
import 'package:rexam/productdata.dart';

class DeatilPage extends StatefulWidget {
  const DeatilPage({super.key});

  @override
  State<DeatilPage> createState() => _DeatilPageState();
}

class _DeatilPageState extends State<DeatilPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 340,
              width: 401,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(productdata[indexselect]["img"]),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.white,
                            )),
                        Icon(
                          Icons.shopping_cart,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productdata[indexselect]['name'],
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2),
                      ),
                      Text(
                        "Rs : " +
                            (productdata[indexselect]['price']).toString(),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2),
                      ),
                      Text(
                        "⭐⭐⭐⭐",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                          "Associated Press text, photo, graphic, audio and\n videomaterial shall not be broadcast rewritten fo\n publication or  orindirectly in any medium. sumit\npublication or  orindirectly in any medium"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(child: Text("Snacks",style: TextStyle(fontSize: 20,color: Colors.white),)),
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(child: Text("Burger",style: TextStyle(fontSize: 20,color: Colors.white),)),
                          )
                        ],
                      ),
                      SizedBox(height: 50,),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed("/add");
                            if (productdata[indexselect]['boolname'] == true) {
                              cart.add(productdata[indexselect]);
                              productdata[indexselect]['boolname'] = false;
                            }
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              "Add To Cart",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

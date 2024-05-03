import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rexam/productdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 60,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.black12),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Search",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 190,
                ),
                Icon(
                  Icons.search_rounded,
                  size: 22,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(
                      "Assest/image/tortilla-wrap-with-falafel-fresh-salad-vegan-tacos-vegetarian-healthy-food.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                )),
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "UpTo 50% off",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  Text(
                    "In All Items",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  ...List.generate(
                    productdata.length,
                    (index) => InkWell(
                      onTap: () {
                        indexselect = index;
                        Navigator.of(context).pushNamed("/dt");
                      },
                      child: Container(
                        margin: EdgeInsets.all(15),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(productdata[index]['img']),
                              fit: BoxFit.cover,
                              opacity: 0.8),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              productdata[index]['name'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Text((productdata[index]['price']).toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15)),
                            Text("⭐⭐⭐⭐",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10)),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

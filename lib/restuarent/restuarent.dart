import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_app/bnb/bnb.dart';
import 'package:getx_app/broserScreen.dart/broserScreen.dart';

class restuarent extends StatefulWidget {
  const restuarent({super.key});

  @override
  State<restuarent> createState() => _restuarentState();
}

class _restuarentState extends State<restuarent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          InkWell(
              onTap: () {
                Get.to(bottomNB());
              },
              child: Container(
                height: 250,
                width: 550,
                child: Image.asset(
                  "assets/images/screen2image.png",
                  fit: BoxFit.cover,
                ),
              )),
          Container(
              height: 550,
              width: 550,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 4, 33, 56),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.white)]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Take Out",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 4, 33, 56),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.white)]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Orders",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.search),
                        Text(
                          "Featured items",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Appetizers",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Sushi",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Fastest near you",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          height: 4,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(BroserScreen());
                          },
                          child: Container(
                            height: 200,
                            width: 330,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(color: Colors.white)],
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/screen3.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 200,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(color: Colors.white)],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg44PT0wgSl2vP8kRR0XN5r7fLqqK3QAewZQ&s"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 200,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(color: Colors.white)],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg44PT0wgSl2vP8kRR0XN5r7fLqqK3QAewZQ&s"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}

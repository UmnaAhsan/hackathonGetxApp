import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_app/map/map.dart';
import 'package:getx_app/orderScreenScreen/orderScreen.dart';

class BroserScreen extends StatefulWidget {
  const BroserScreen({super.key});

  @override
  State<BroserScreen> createState() => _BroserScreenState();
}

class _BroserScreenState extends State<BroserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          InkWell(
              onTap: () {
                Get.to(MapScreen());
              },
              child: Container(
                height: 250,
                width: 550,
                child: Image.asset(
                  "assets/images/screen3.png",
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
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Udon Miso2e type  Required Thin    Thick Udon Shirataki Additional Toppings Required Braised Pork",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "Udon Miso2e type  Required Thin    Thick Udon Shirataki Additional Toppings Required Braised Pork",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "Udon Miso2e type  Required Thin    Thick Udon Shirataki Additional Toppings Required Braised Pork",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "Udon Miso2e type  Required Thin    Thick Udon Shirataki Additional Toppings Required Braised Pork",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "Udon Miso2e type  Required Thin    Thick Udon Shirataki Additional Toppings Required Braised Pork",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Text(
                                  "Udon Miso2e type  Required Thin    Thick Udon Shirataki Additional Toppings Required Braised Pork",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 4, 33, 56),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(color: Colors.white)
                                          ]),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              )),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.minimize_outlined,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Noodles",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 4, 33, 56),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(color: Colors.white)
                                              ]),
                                          child: Text(
                                            "Required",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 17),
                                          )),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Burgers",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      Text(
                                        "Pasta",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      Text(
                                        "Noodles",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(OrderScreen());
                                        },
                                        child: Container(
                                            height: 35,
                                            width: 220,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: Color.fromARGB(
                                                    255, 29, 60, 85),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.white,
                                                      blurRadius: 1)
                                                ]),
                                            child: Center(
                                                child: Text(
                                              "ORDER",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )))
        ],
      ),
    ));
  }
}

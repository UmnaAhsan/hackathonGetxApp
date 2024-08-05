import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_app/colors/colors.dart';
import 'package:getx_app/restuarent/restuarent.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Maplewood Suites",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(color: Colors.white, blurRadius: 1)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 26, 63, 94),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.directions_run_outlined,
                                  color: Colors.white,
                                  size: 23,
                                )),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 26, 63, 94),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.directions_bike_rounded,
                                  color: Colors.white,
                                  size: 23,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 35,
                  width: 340,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white)],
                    color: CustomColors.containerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.qr_code_2,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 17,
                        ),
                        hintText: 'Search'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white, blurRadius: 1)
                                  ]),
                              child: Image.asset(
                                "assets/images/burger.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Burgers",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white, blurRadius: 1)
                                  ]),
                              child: Image.asset(
                                "assets/images/cake.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Desserts",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white, blurRadius: 1)
                                  ]),
                              child: Image.asset(
                                "assets/images/taco.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Mexiican",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white, blurRadius: 1)
                                  ]),
                              child: Image.asset(
                                "assets/images/sushi.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Sushi",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: Colors.white)],
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg44PT0wgSl2vP8kRR0XN5r7fLqqK3QAewZQ&s"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 150,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: Colors.white)],
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg44PT0wgSl2vP8kRR0XN5r7fLqqK3QAewZQ&s"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 150,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: Colors.white)],
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg44PT0wgSl2vP8kRR0XN5r7fLqqK3QAewZQ&s"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 150,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(color: Colors.white)],
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg44PT0wgSl2vP8kRR0XN5r7fLqqK3QAewZQ&s"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 150,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: Colors.white)],
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg44PT0wgSl2vP8kRR0XN5r7fLqqK3QAewZQ&s"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
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
                        Get.to(restuarent());
                      },
                      child: Container(
                        height: 150,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: Colors.white)],
                            image: DecorationImage(
                                image: AssetImage("assets/images/screen3.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 150,
                      width: 300,
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
                      height: 150,
                      width: 300,
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
              ]),
            )));
  }
}

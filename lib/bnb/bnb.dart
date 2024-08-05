import 'package:flutter/material.dart';
import 'package:getx_app/broserScreen.dart/broserScreen.dart';
import 'package:getx_app/colors/colors.dart';
import 'package:getx_app/home/home.dart';
import 'package:getx_app/map/map.dart';
import 'package:getx_app/orderScreenScreen/orderScreen.dart';

class bottomNB extends StatefulWidget {
  const bottomNB({super.key});

  @override
  State<bottomNB> createState() => _bottomNBState();
}

class _bottomNBState extends State<bottomNB> {
  int currentTab = 0;
  Widget currentScreen = home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
          color: CustomColors.containerColor,
          child: Container(
              height: 20,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = home();
                          currentTab = 0;
                        });
                      },
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = BroserScreen();
                          currentTab = 1;
                        });
                      },
                      child: Icon(
                        Icons.browser_updated_rounded,
                        color: Colors.white,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = OrderScreen();
                          currentTab = 3;
                        });
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = MapScreen();
                          currentTab = 3;
                        });
                      },
                      child: Icon(
                        Icons.list_alt_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}

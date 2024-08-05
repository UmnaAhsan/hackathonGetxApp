import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_app/bnb/bnb.dart';
import 'package:getx_app/colors/colors.dart';
import 'package:getx_app/loginScreens/signupScreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void loginid() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email == "" || password == "") {
      print("please fill all the details");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        if (userCredential.user != null) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => bottomNB()));
        }
      } on FirebaseAuthException catch (ex) {
        print(ex.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover)),
                child: Center(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(
                                "assets/images/containerlogo.png",
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Delievered Favourite Food',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.textColor),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 290,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: CustomColors.containerColor,
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      height: 40,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Colors.white)
                                        ],
                                        color: CustomColors.containerColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: TextField(
                                        controller: emailController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter yout email',
                                            prefixIcon: Icon(Icons.person,
                                                color: Colors.white, size: 17)),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      height: 40,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Colors.white)
                                        ],
                                        color: CustomColors.containerColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: TextField(
                                        obscureText: true,
                                        controller: passwordController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter yout password',
                                            suffixIcon: Icon(
                                                Icons.remove_red_eye_outlined,
                                                color: Colors.white,
                                                size: 17),
                                            prefixIcon: Icon(
                                              Icons.person,
                                              color: Colors.white,
                                              size: 17,
                                            )),
                                      )),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text(
                                            "Forget Password?",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      loginid();
                                    },
                                    child: Container(
                                        height: 35,
                                        width: 220,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color:
                                                Color.fromARGB(255, 29, 60, 85),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 1)
                                            ]),
                                        child: Center(
                                            child: Text(
                                          "Sign In",
                                          style: TextStyle(color: Colors.white),
                                        ))),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Center(
                                      child: Text(
                                    "Or",
                                    style: TextStyle(color: Colors.red),
                                  )),
                                  Container(
                                    height: 65,
                                    width: 60,
                                    color: Colors.transparent,
                                    child:
                                        Image.asset("assets/images/google.png"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Dont have an account? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                              onTap: () {
                                Get.to(Signup());
                              },
                              child: Text(
                                "REGISTER",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ))
                        ]),
                  ),
                )))));
  }
}

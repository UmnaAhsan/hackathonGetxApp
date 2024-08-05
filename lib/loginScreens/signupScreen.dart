
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_app/colors/colors.dart';
import 'package:getx_app/loginScreens/loginScreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();

  void sign() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cpassword = cpasswordController.text.trim();

    if (email == "" || password == "" || cpassword == "") {
      print("Please fill all the fields!");
    } else if (password != cpassword) {
      print("Passwords do not match!");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        if (userCredential.user != null) {
          Navigator.pop(context);
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
                            height: 10,
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
                                      "SignUp",
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
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter yout password',
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
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                'Enter your comfirm password',
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
                                      sign(); // loginid();
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
                                          "Create Account",
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
                            "Already have an account? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                              onTap: () {
                                Get.to(Login());
                              },
                              child: Text(
                                "SIGNUP",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ))
                        ]),
                  ),
                )))));
  }
}

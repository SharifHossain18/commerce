import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_field/custom_login_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 250,
              width: Get.width,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50
                  ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 400,
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomLoginField(
                    hinttext: "UserName",
                  ),
                  CustomLoginField(
                    hinttext: "Email",
                  ),
                  CustomLoginField(
                    hinttext: "Password",
                    icon: Icon(Icons.visibility),
                  ),
                  CustomLoginField(
                    hinttext: "Phone Number",
                  ),
                  Container(
                    height: 45,
                    width: Get.width,
                    decoration: BoxDecoration(
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15)
                            )
                          )
                        )
                      ),
                      onPressed: (){
                      },
                      child: Text("Register"),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text("I have already an account"),
                GestureDetector(
                  onTap: (){

                  },
                    child: Text("Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold
                    ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

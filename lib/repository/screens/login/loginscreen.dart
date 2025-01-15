import 'package:blinkit_copy/repository/widgets/uiHelper.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_copy/repository/screens/bottomNavigator/bottomnavscrren.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Add SingleChildScrollView
        child: Center(
          child: Column(
            children: [
              Uihelper.customImage(img: "bg1"),
              SizedBox(
                height: 30,
              ),
              Uihelper.customImage(img: "logo2"),
              SizedBox(
                height: 20,
              ),
              Uihelper.CustomText(
                  text: "India's last minute app",
                  color: Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                  fontfamily: "bold"),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0Xffffffff),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Uihelper.CustomText(
                          text: "Shivam",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.w500,
                          fontsize: 14),
                      SizedBox(
                        height: 5,
                      ),
                      Uihelper.CustomText(
                          text: "1234XXXXX",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold"),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bottomnavscrren()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFE23744),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Uihelper.CustomText(
                                    text: "Login with",
                                    color: Colors.white,
                                    fontweight: FontWeight.bold,
                                    fontsize: 14,
                                    fontfamily: "bold"),
                                SizedBox(
                                  width: 5,
                                ),
                                Uihelper.customImage(img: "zomata"),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Uihelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Uihelper.CustomText(
                        text: "or login with phone number",
                        color: Color(0XFF269237),
                        fontweight: FontWeight.normal,
                        fontsize: 14,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

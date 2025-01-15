import 'package:blinkit_copy/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  var groceryKitchen = [
    {"img": "image 41", "text": "Vegetables & \nFruits"},
    {"img": "image 42", "text": "Atta, Dal & \nRice"},
    {"img": "image 43", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45", "text": "Biscuits & \nBakery"},
  ];
  var secondGrocery = [
    {"img": "image 21", "text": "Dry Fruits &\nCereals"},
    {"img": "image 22", "text": "Kitchen &\nAppliances"},
    {"img": "image 23", "text": "Tea & \nCoffee"},
    {"img": "image 24", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25", "text": "Noodles & \nPacket Food"},
  ];
  var snacks = [
    {"img": "image 31", "text": "Chips &\nNamkeens"},
    {"img": "image 32", "text": "Sweets &\nChocolates"},
    {"img": "image 33", "text": "Drinks & \nJuices"},
    {"img": "image 34", "text": "Sauces & \nSpreads"},
    {"img": "image 35", "text": "Beuaty & \nCosmetics"},
  ];
  var household = [
    {"img": "image 36"},
    {"img": "image 37"},
    {"img": "image 38"},
    {"img": "image 39"},
    {"img": "image 40"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                color: const Color(0XFFF7CB45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "Blinkit in",
                          color: const Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "16 minutes",
                          color: const Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "HOME ",
                          color: const Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                        ),
                        Uihelper.CustomText(
                          text: "- Raj Kunj, Punjab",
                          color: const Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Uihelper.CustomTextField(
                  controller: searchController,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.CustomText(
                text: "Grocery & Kitchen",
                color: const Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          // SizedBox(height: 10),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: Uihelper.customImage(
                            img: groceryKitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      SizedBox(height: 5), // Spacing between image and text
                      Uihelper.CustomText(
                        text: groceryKitchen[index]["text"].toString(),
                        color: const Color(0XFF000000),
                        fontweight: FontWeight.bold,
                        fontsize: 10,
                        fontfamily: "bold",
                      ),
                    ],
                  );
                },
                itemCount: groceryKitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          // another
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: Uihelper.customImage(
                            img: secondGrocery[index]["img"].toString(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 5), // Spacing between image and text
                      Uihelper.CustomText(
                        text: secondGrocery[index]["text"].toString(),
                        color: const Color(0XFF000000),
                        fontweight: FontWeight.bold,
                        fontsize: 10,
                        fontfamily: "bold",
                      ),
                    ],
                  );
                },
                itemCount: secondGrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 10,
                width: 20,
              ),
              Uihelper.CustomText(
                text: "Snacks & Drinks",
                color: const Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          // another 2
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: Uihelper.customImage(
                            img: snacks[index]["img"].toString(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 5), // Spacing between image and text
                      Uihelper.CustomText(
                        text: snacks[index]["text"].toString(),
                        color: const Color(0XFF000000),
                        fontweight: FontWeight.bold,
                        fontsize: 10,
                        fontfamily: "bold",
                      ),
                    ],
                  );
                },
                itemCount: snacks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 10,
                width: 20,
              ),
              Uihelper.CustomText(
                text: "Househole Essentials",
                color: const Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: Uihelper.customImage(
                            img: household[index]["img"].toString(),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: snacks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

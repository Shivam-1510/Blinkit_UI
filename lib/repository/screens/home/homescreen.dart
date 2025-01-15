import 'package:blinkit_copy/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  var mega = [
    {"img": "image 50", "text": "Lights, Diyas & \nCandles"},
    {"img": "image 51", "text": "Diwali & \nGifts"},
    {"img": "image 52", "text": "Appliances & \nGadgets"},
    {"img": "image 53", "text": "Home & \nLiving"},
  ];
  var category = [
    {
      "img": "image 54",
      "text": "Golden Glass  \nWooden Lid Candle",
      "price": "70"
    },
    {"img": "image 57", "text": "Royal Gulab Jamun \nBikano", "price": "70"},
    {"img": "image 63", "text": "Bikaji Bhujia & \nHaldiram", "price": "79"},
  ];
  var groceryKitchen = [
    {"img": "image 41", "text": "Vegetables & \nFruits"},
    {"img": "image 42", "text": "Atta, Dal & \nRice"},
    {"img": "image 43", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45", "text": "Biscuits & \nBakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  color: Color(0XFFEC0505),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Uihelper.CustomText(
                            text: "Blinkit in",
                            color: Color(0XFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 15,
                            fontfamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Uihelper.CustomText(
                            text: "16 minutes",
                            color: Color(0XFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Uihelper.CustomText(
                            text: "HOME ",
                            color: Color(0XFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 15,
                          ),
                          Uihelper.CustomText(
                            text: "- Raj Kunj, Punjab",
                            color: Color(0XFFFFFFFF),
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
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.white,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0XFFEC0505),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Uihelper.customImage(img: "image 60"),
                      Uihelper.customImage(img: "image 55"),
                      Uihelper.CustomText(
                        text: "Mega Diwali Sale ",
                        color: Color(0XFFFFFFFF),
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                        fontfamily: "bold",
                      ),
                      Uihelper.customImage(img: "image 55"),
                      Uihelper.customImage(img: "image 61"),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        mega.length,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 115,
                            width: 86,
                            decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Uihelper.CustomText(
                                  text: mega[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 9,
                                ),
                                Uihelper.customImage(
                                    img: mega[index]["img"].toString()),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  category.length,
                  (index) {
                    var item = category[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 108,
                            width: 93,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Uihelper.customImage(
                                img: item["img"].toString()),
                          ),
                          SizedBox(height: 5),
                          Uihelper.CustomText(
                            text: item["text"].toString(),
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 9,
                          ),
                          SizedBox(height: 5),
                          Uihelper.CustomText(
                            text: "\u20B9 ${item["price"]}",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  groceryKitchen.length,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: Uihelper.customImage(
                              img: groceryKitchen[index]["img"].toString()),
                        ),
                        SizedBox(height: 5),
                        Uihelper.CustomText(
                          text: groceryKitchen[index]["text"].toString(),
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 10,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

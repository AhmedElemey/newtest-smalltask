import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: size.height * .85,
            child: ListView(
              children: [
                Container(
                    child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/bluecar.jpg",
                      width: double.infinity,
                    ),
                    Positioned(
                        top: 20,
                        left: 10,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.deepPurple.shade900,
                          size: 30,
                        )),
                    Positioned(
                        top: 20,
                        right: 10,
                        child: Icon(
                          Icons.menu,
                          color: Colors.deepPurple.shade900,
                          size: 30,
                        ))
                  ],
                )),
                Container(
                  margin: EdgeInsets.all(3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text(
                        "تصفح حسب نوع السياره",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .09,
                  child: ListView.builder(
                      itemCount: 14,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, int i) {
                        return Container(
                          margin: EdgeInsets.all(1),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/car_top2.png',
                                    width:
                                        MediaQuery.of(context).size.width * .20,
                                  ),
                                  Text("Audi")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/car_top2.png',
                                    width:
                                        MediaQuery.of(context).size.width * .20,
                                  ),
                                  Text("Fiat")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/car_top2.png',
                                    width:
                                        MediaQuery.of(context).size.width * .20,
                                  ),
                                  Text("BMW")
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "الكل",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(),
                      Text(
                        "تصفح حسب الماركه",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  height: size.height * .09,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Row(
                        children: [
                          Image.asset(
                            "assets/images/fiat.png",
                            width: size.width * .25,
                          ),
                          Image.asset(
                            "assets/images/audi.png",
                            width: size.width * .25,
                          ),
                          Image.asset(
                            "assets/images/BMW.png",
                            width: size.width * .25,
                          ),
                          Image.asset(
                            "assets/images/ford.png",
                            width: size.width * .25,
                          ),
                          Image.asset(
                            "assets/images/jeep.png",
                            width: size.width * .25,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "الكل",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(),
                      Text(
                        "تصفح حسب الوكالات",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: size.height * .3,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        return Container(
                          width: size.width * .75,
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/bluecar.jpg",
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "تبدأ من 12900ك.م",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(),
                                    Text(
                                      "Audi A8",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "الكل",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(),
                    Text(
                      "فيديو",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  height: size.height * .2,
                  child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/car_top2.png",
                              width: size.width * .75,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BottomAppBar(
              color: Colors.deepPurple.shade900,
              child: Container(
                margin: EdgeInsets.only(top: 7, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons
                                .car_rental, // you used custom icon in the photo
                            size: 40,
                            color: Colors.white70,
                          ),
                          Text(
                            "التأمين",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons
                                .car_repair, // you used custom icon in the photo
                            size: 40,
                            color: Colors.white70,
                          ),
                          Text(
                            "التثمين",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons
                                .car_rental, // you used custom icon in the photo
                            size: 40,
                            color: Colors.white70,
                          ),
                          Text(
                            "الخدمات",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons
                                .car_repair, // you used custom icon in the photo
                            size: 40,
                            color: Colors.white70,
                          ),
                          Text(
                            "الوكالات",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

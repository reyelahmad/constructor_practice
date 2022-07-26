import 'package:constructor_practice/weidget/travel_wid.dart';
import 'package:constructor_practice/weidget/travel_wid2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAF6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color(0xffEAF6F6),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.menu,
              color: Colors.pink,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Want To Travel !",
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Expanded(
              flex: 70,
              child: TrvlWidget(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 45,
              child: TrvlWidget2(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:constructor_practice/model/travel_cons.dart';
import 'package:flutter/material.dart';

class TrvlWidget2 extends StatefulWidget {
  final travel_list = TravelConst.getTraveldata();

  @override
  _TrvlWidget2State createState() => _TrvlWidget2State();
}

class _TrvlWidget2State extends State<TrvlWidget2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.travel_list.length,
      itemBuilder: (BuildContext context, int index) {
        var travel = widget.travel_list[index];
        return Stack(
          overflow: Overflow.visible,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 18),
                child: Container(
                  height: 222,
                  width: 150,

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1,3),
                          color: Colors.black87,
                          blurRadius: 6,spreadRadius: 1,blurStyle: BlurStyle.normal)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        travel.img,
                      ),
                    ),
                  ),
                  child: Stack(

                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          bottom: 15,
                          left: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  travel.name,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  travel.addrs,
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )),


                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

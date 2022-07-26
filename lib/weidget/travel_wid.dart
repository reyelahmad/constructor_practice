import 'package:constructor_practice/model/travel_cons.dart';
import 'package:flutter/material.dart';

class TrvlWidget extends StatefulWidget {
  final travel_list = TravelConst.getTraveldata();

  @override
  _TrvlWidgetState createState() => _TrvlWidgetState();
}

class _TrvlWidgetState extends State<TrvlWidget> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
                  height: 340,

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1,3),
                          color: Colors.black87,
                          blurRadius: 4,spreadRadius: 1,blurStyle: BlurStyle.normal)
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
                          bottom: 20,
                          left: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  travel.name,
                                  style: TextStyle(
                                      fontSize: 34,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  travel.addrs,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),),
                          height: 85,
                          width: 250,

                        ),
                      ),
                      Positioned(
                          bottom: -10,
                          right: 30,
                          child: Container(height: 60,width: 60,decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.pink,
                                    blurRadius: 5,spreadRadius: 2,blurStyle: BlurStyle.normal)
                              ],
                          color: Colors.pink,
                          shape: BoxShape.circle),child: Icon(Icons.add,size: 40,color: Colors.white,),))
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

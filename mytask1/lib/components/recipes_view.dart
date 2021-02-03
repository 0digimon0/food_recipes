import 'package:flutter/material.dart';

class RepicesMediumView extends StatelessWidget {
  final VoidCallback onPressed;

  RepicesMediumView({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            margin: EdgeInsets.only(left: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: FlatButton(
                onPressed: onPressed,
                child: Container(
                  padding: EdgeInsets.only(left: 70, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Com rang thap cam",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("#tag1 #tag2 #tag3",
                          style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.blueAccent)),
                      Text("#food_type_1 #food_type_1 ",
                          style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.green)),
                      SizedBox(height: 10),
                      Expanded(
                          child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\u{23F1} 15 min',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.red)),
                              Text('\u{2B50} 4.3',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black))
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RepicesSimpleView extends StatelessWidget {
  final VoidCallback onPressed;

  RepicesSimpleView({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 180,
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 180,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: FlatButton(
                onPressed: onPressed,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Com rang thap cam",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("#tag1 #tag2 #tag3",
                          style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: Colors.blueAccent)),
                      Text("#food_type_1 #food_type_1 ",
                          style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: Colors.green)),
                      SizedBox(height: 10),
                      Expanded(
                          child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\u{23F1} 15 min',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.red)),
                              Text('\u{2B50} 4.3',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black))
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

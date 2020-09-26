import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onTheWayCard extends StatefulWidget {
  @override
  _onTheWayCardState createState() => _onTheWayCardState();
}

class _onTheWayCardState extends State<onTheWayCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      shadowColor: Color(0xffc4c4c4),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 200.0,
          padding: EdgeInsets.symmetric(
            vertical: 25.0,
            horizontal: 15.0,
          ),
          child: Row(
            children: [
              Flexible(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Abdominal Belt Coolprene',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Size: Medium, Black',
                        style: TextStyle(
                          color: Color(0xff989Da3),
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Rs. 899',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Rs. 1050',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff989DA3),
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '20% Off',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff49e9e9),
                        ),
                      ),
                      Text(
                        'Expected delivery on Thursday, Sep 25',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1674BE),
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 2,
              ),
              Flexible(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 100,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset(
                            'images/Abdominal_Belt.jpg',
                          ),
                        ),
                      ),
                      Text(
                        'Qty: 1',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

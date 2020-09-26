import 'package:flutter/material.dart';

class cancelledProduct extends StatefulWidget {
  @override
  _cancelledProductState createState() => _cancelledProductState();
}

class _cancelledProductState extends State<cancelledProduct> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      shadowColor: Color(0xffc4c4c4),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Container(
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
                            'Ozocheck BP Monitor',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // Text(
                          //   'Size: Medium, Black',
                          //   style: TextStyle(
                          //     color: Color(0xff989Da3),
                          //     fontSize: 12,
                          //   ),
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Rs. 1250',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Rs. 2050',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff989DA3),
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '40% Off',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff49e9e9),
                            ),
                          ),
                          Text(
                            'Cancelled',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffee3d33),
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
                                'images/bp.jpg',
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
            Divider(
              thickness: 1.0,
              color: Color(0xffc4c4c4),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10.0,
                bottom: 10.0,
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Refund Complete',
                          style: TextStyle(
                            color: Color(0xff07DAE8),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('Rs. 1250 added to your bank'),
                      ],
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 50,
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

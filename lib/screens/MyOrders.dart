import 'package:flutter/material.dart';
import 'package:mesa/components/Orders/cancelledCard.dart';
import 'package:mesa/components/Orders/onTheWay.dart';
import 'package:mesa/components/Orders/deliveredCard.dart';

class MyOrdersPage extends StatefulWidget {
  @override
  _MyOrdersPageState createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
            color: Color(0xff049E9E9),
          ),
          title: Text(
            'My Orders',
            style: TextStyle(
              color: Color(0xff49e9e9),
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff49E9E9),
                ),
                onPressed: null),
          ],
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              onTheWayCard(),
              SizedBox(
                height: 5,
              ),
              deliveredCard(),
              SizedBox(
                height: 5,
              ),
              cancelledProduct(),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

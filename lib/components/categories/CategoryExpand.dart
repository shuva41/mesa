import 'package:flutter/material.dart';

class CategoryExpand extends StatelessWidget {
  final List<Widget> children;
  final String catTitle;
  final String catImgPath;
  CategoryExpand(
      {@required this.children,
      @required this.catTitle,
      @required this.catImgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.0),
      child: Material(
        elevation: 5.0,
        shadowColor: Color(0xffe7e7e7),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.only(
            bottom: 20.0,
          ),
          children: children,
          title: Text(
            catTitle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: SizedBox(
            height: 80,
            width: 80,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset(catImgPath),
            ),
          ),
          tilePadding: EdgeInsets.all(15.0),
        ),
      ),
    );
  }
}

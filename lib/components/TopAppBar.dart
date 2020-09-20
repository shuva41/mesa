import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget implements PreferredSizeWidget {
  double _prefferedHeight = 100.0;

  //Properties of the AppBar
  final Widget pageTitle;
  final List<IconButton> actionButtons;

  //Constructor
  TopAppBar({this.pageTitle, this.actionButtons});

  @override
  _TopAppBarState createState() => _TopAppBarState(
        pageTitle: this.pageTitle,
        actionButtons: this.actionButtons,
      );

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_prefferedHeight);
}

class _TopAppBarState extends State<TopAppBar> {
  //State Object Properties
  final Widget pageTitle;
  final List<IconButton> actionButtons;

  //State Object Constructor
  _TopAppBarState({this.pageTitle, this.actionButtons});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Color(0xff49E9E9),
      ),
      automaticallyImplyLeading: true,
      title: pageTitle,
      // Image.asset('images/title_logo.jpg'),
      actions: actionButtons,
      // [
      //   IconButton(
      //       icon: Icon(
      //         Icons.favorite,
      //         color: Color(0xff49E9E9),
      //       ),
      //       onPressed: null),
      //   IconButton(
      //       icon: Icon(
      //         Icons.notifications,
      //         color: Color(0xff49E9E9),
      //       ),
      //       onPressed: null),
      //   IconButton(
      //       icon: Icon(
      //         Icons.shopping_cart,
      //         color: Color(0xff49E9E9),
      //       ),
      //       onPressed: null),
      // ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w200,
            ),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal[200],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.teal,
                size: 20,
              ),
              hintText: 'Search',
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff49E9E9),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 60,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'Hello, Shuvankar Ray',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.category,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'All Categories',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/categories'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 0,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Color(0xff07DAE8),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.file_upload,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'My Orders',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/orders'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'My Cart',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/cart'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Image.asset('images/Coupon.png'),
                title: Text(
                  'My Coupons',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/coupons'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'My Wishlist',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/wishlist'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'My Account',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/account'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 0,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Color(0xff07DAE8),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/contactus'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/aboutus'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'Privacy, Terms and Conditions',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/privacy'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'FAQ',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/FAQ'),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Color(0xff49E9E9),
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                      // color: Color(0xff49E9E9),
                      ),
                ),
                onTap: () => onTap(context, '/logout'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

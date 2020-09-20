import 'package:flutter/material.dart';
import 'package:mesa/components/MyDrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mesa/components/BottomNavBar.dart';
import 'package:mesa/components/TopAppBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    'images/Slider_1.jpg',
    'images/Slider_2.png',
    'images/Slider_3.jpg',
  ];
  String _route_name = '/';
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TopAppBar(
          pageTitle: Image.asset('images/title_logo.jpg'),
          actionButtons: [
            IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Color(0xff49E9E9),
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color(0xff49E9E9),
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff49E9E9),
                ),
                onPressed: null),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
        drawer: MyDrawer(
          onTap: (ctx, rname) {
            setState(() {
              _route_name = rname;
              Navigator.pushNamed(ctx, _route_name);
            });
          },
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.only(top: 10.0),
            children: [
              Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 210,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(
                          seconds: 2,
                        ),
                        autoPlayAnimationDuration: Duration(
                          milliseconds: 2000,
                        ),
                        pauseAutoPlayOnTouch: true,
                        pauseAutoPlayOnManualNavigate: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      items: imageList
                          .map((e) => Container(
                                width: 450,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  child: Image.asset(
                                    e,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.map((e) {
                        int a = imageList.indexOf(e);
                        return Container(
                          height: 8,
                          width: 8,
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 8.0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == a ? Colors.teal : Colors.grey,
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff17629C),
                      Color(0xFF218EB5),
                      Color(0xff2AB8CC),
                      Color(0xFF07DAE8),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.2, 0.6, 0.8, 1.0],
                  ),
                ),
                height: 300,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'COVID-19 Essentials',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card1Structure(
                              'Army Love', 'Rs. 230', 'images/AL1.png'),
                          Card1Structure(
                              'Bravery', 'Rs. 230', 'images/Brave1.png'),
                          Card1Structure(
                              'Grenade', 'Rs. 230', 'images/GR1.png'),
                          Card1Structure(
                              'Army Love', 'Rs. 230', 'images/AL1.png'),
                          Card1Structure(
                              'Bravery', 'Rs. 230', 'images/Brave1.png'),
                          Card1Structure(
                              'Grenade', 'Rs. 230', 'images/GR1.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff07DAE8),
                      Color(0xffEF4B41),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 450,
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Trending Now',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 350,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card2Structure(
                            'images/AL1.png',
                            'Army Love',
                            '230',
                            '299',
                          ),
                          Card2Structure(
                            'images/Brave1.png',
                            'Bravery',
                            '199',
                            '250',
                          ),
                          Card2Structure(
                            'images/GR1.png',
                            'Grenade',
                            '210',
                            '300',
                          ),
                          Card2Structure(
                            'images/AL1.png',
                            'Army Love',
                            '230',
                            '299',
                          ),
                          Card2Structure(
                            'images/Brave1.png',
                            'Bravery',
                            '199',
                            '250',
                          ),
                          Card2Structure(
                            'images/GR1.png',
                            'Grenade',
                            '210',
                            '300',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffEE3D33),
                      Color(0xffFE665D),
                      Color(0xffFAB7B3),
                    ],
                  ),
                ),
                height: 500,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: SizedBox(
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Best Sellers',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              color: Color(0xffEE3D33),
                              child: Center(
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Card3Structure('images/AL1.png', 'Army Love', '250'),
                        Card3Structure('images/Brave1.png', 'Brave', '190'),
                      ],
                    ),
                    // SizedBox(
                    //   height: 2,
                    // ),
                    Row(
                      children: [
                        Card3Structure('images/GR1.png', 'Grenade', '190'),
                        Card3Structure('images/AL1.png', 'Army Love', '230')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffEFBEBB),
                      Color(0xff7BD4E1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                height: 110,
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Subscribe for Offer & Coupons',
                      style: TextStyle(
                        color: Color(0xffEE3D33),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 250,
                          height: 30,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              hintText: 'Your Email',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        RaisedButton(
                          color: Color(0xff2E72A6),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Subscribe',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff49DCDC),
                      Color(0xff1674BE),
                    ],
                  ),
                ),
                height: 500,
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 5,
                ),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Shop by Categories',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Card4Structure(
                          'images/HomeHealth.png',
                          'Home Healthcare',
                        ),
                        Card4Structure(
                          'images/Diabetis.png',
                          'Diabetis Healthcare',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card4Structure(
                          'images/Old_age.png',
                          'Old Age Essentials',
                        ),
                        Card4Structure(
                          'images/mother_child.png',
                          'Child Care',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                color: Color(0xffCAF3F3),
                height: 203,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Partner Promotions',
                      style: TextStyle(
                        color: Color(0xff42C5D8),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card5Structure(
                            'images/Myntra.png',
                            '200',
                            '2000',
                          ),
                          Card5Structure(
                            'images/lenskart.png',
                            '250',
                            '1500',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Card 1
Widget Card1Structure(String Header, String Price, String ImageUrl) {
  return Card(
    borderOnForeground: true,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 0,
      ),
      height: 150,
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$Header',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 100,
            width: 150,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Image.asset('$ImageUrl'),
            ),
          ),
          Text(
            '$Price',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}

//Card 2

Widget Card2Structure(
    String ImgUrl, String ProductName, String OfferPrice, String MRP) {
  var percent = (int.parse(MRP) - int.parse(OfferPrice)) / int.parse(MRP) * 100;
  var percentoff = percent.floor();
  var discount = (int.parse(MRP) - int.parse(OfferPrice));
  return Card(
    child: Container(
      height: 250,
      width: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                  width: 170,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Image.asset('$ImgUrl'),
                  ),
                ),
                Text(
                  '$ProductName',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'RS. $OfferPrice',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Rs. $MRP',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Save Rs. $discount',
                  style: TextStyle(
                    color: Colors.teal[200],
                    fontSize: 15,
                  ),
                ),
                FlatButton(
                  onPressed: null,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 10,
            child: Stack(
              children: [
                Image.asset('images/Polygon 1.jpg'),
                Positioned(
                  left: 20,
                  top: 2,
                  child: Text(
                    '$percentoff % off',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget Card3Structure(String Img, String Title, String Price) {
  return Expanded(
    child: Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(10),
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
              width: 140,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: FlatButton(
                  onPressed: () {},
                  child: Image.asset('$Img'),
                ),
              ),
            ),
            Expanded(
              child: Text('$Title'),
            ),
            Expanded(
              child: Text(
                'Rs $Price/-',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Card4Structure(String img_name, String cat_name) {
  return Expanded(
    child: Card(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 200,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('$img_name'),
              ),
            ),
            Container(
              height: 50,
              child: Center(
                child: Text(
                  '$cat_name',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget Card5Structure(String ImageUrl_value, String Offer, String price_value) {
  return Card(
    borderOnForeground: true,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 0,
      ),
      height: 122,
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 70,
            width: 110,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset('$ImageUrl_value'),
            ),
          ),
          Expanded(
            child: Text(
              'Get',
              style: TextStyle(
                // fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Rs. $Offer Off',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'on order above Rs. $price_value',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

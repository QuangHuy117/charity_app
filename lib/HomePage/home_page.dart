// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:charity_app/CreateNewFundPage/create_new_fund_page.dart';
import 'package:charity_app/DetailsPage/detail_page.dart';
import 'package:charity_app/ProfilePage/profile_page.dart';
import 'package:charity_app/icons/my_flutter_app_icons.dart';
import 'package:charity_app/models/charity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var format = NumberFormat('#,###,000');
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  List<Charity> listCharity = [
    Charity(
      id: 'CH1',
      title: 'Education Dono For Poor Child',
      topic: 'Education',
      organization: 'NCAPA',
      description:
          'The mission of this donation is to cultivate highly trained and capable Palestinian graduates with a proficiency in conversational English that will lead to their successful participation in the labor.',
      image: 'assets/images/africa1.jpg',
      dateLeft: 20,
      targetMoney: 10000,
      raisedMoney: 530.65,
    ),
    Charity(
      id: 'CH2',
      title: 'Ebola Disease in Africa',
      topic: 'Pandemic',
      organization: 'WHO',
      description:
          "After the crisis, the long-term effects on the well-being of children are still a concern. We're providing clothing, food, shelter, and ensuring children, especially girls, return to school.",
      image: 'assets/images/africa2.jpg',
      dateLeft: 20,
      targetMoney: 100000,
      raisedMoney: 12400.85,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: SizedBox(
        width: size.width * 0.8,
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(color: Color(0xFF209FA6)),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  margin: EdgeInsets.only(bottom: 0, top: size.height * 0.02),
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(size.width * 0.08),
                    child: Image(
                      image: AssetImage('assets/images/avatar.jpg'),
                      height: size.height * 0.08,
                      width: size.width * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                  accountName: Text(
                    'David William',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  accountEmail: Text(
                    'davidwilliam@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF209FA6),
                  ),
                ),
                // Divider(
                //   color: Colors.white,
                // ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    selectedItem(context, 0);
                  },
                  child: ListTile(
                    title: Text('Create Fund',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        )),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white70,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    selectedItem(context, 1);
                  },
                  child: ListTile(
                    title: Text('Profile',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        )),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white70,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // selectedItem(context, 0);
                  },
                  child: ListTile(
                    title: Text('Settings',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        )),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white70,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // selectedItem(context, 0);
                  },
                  child: ListTile(
                    title: Text('History',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        )),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white70,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    selectedItem(context, 2);
                  },
                  child: ListTile(
                    title: Text('Payment',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        )),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white70,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ListTile(
                  title: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  trailing: Icon(
                    Icons.logout,
                    size: 26,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          margin: EdgeInsets.only(
              top: size.height * 0.03,
              right: size.width * 0.03,
              left: size.width * 0.03),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: Container(
                      padding: EdgeInsets.all(size.width * 0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.width * 0.03),
                        color: Color(0xFF209FA6),
                      ),
                      child: Icon(
                        Icons.short_text_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                      height: size.height * 0.05,
                      width: size.width * 0.73,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(size.width * 0.04),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(size.width * 0.04),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          suffixIcon: Icon(Icons.search),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: size.height * 0.2,
                width: size.width,
                padding: EdgeInsets.all(size.width * 0.04),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.08),
                  color: Color(0xFF209FA6),
                ),
                child: Column(
                  children: [
                    Text(
                      'Start Your',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Fredoka',
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: size.width * 0.01,
                    ),
                    Text('Own Funding',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Fredoka',
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: size.width * 0.01,
                    ),
                    Text('Crate Your Own Dono Post',
                        style: TextStyle(
                            color: Colors.white30,
                            fontFamily: 'Fredoka',
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: size.width * 0.03,
                    ),
                    Container(
                      height: size.height * 0.05,
                      width: size.width * 0.25,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      size.width * 0.03))),
                          onPressed: () {},
                          child: Text(
                            "Start Now",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Fredoka',
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF209FA6),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          MyFlutterApp.th_large,
                          size: 22,
                          color: Colors.blue,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            elevation: 0,
                            primary: Colors.grey.shade200,
                            padding: EdgeInsets.all(size.width * 0.03)),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'All',
                        style: TextStyle(
                          color: Color(0xFF209FA6),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          MyFlutterApp.briefcase_medical,
                          size: 22,
                          color: Colors.green,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            elevation: 0,
                            primary: Colors.grey.shade200,
                            padding: EdgeInsets.all(size.width * 0.03)),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Medical',
                        style: TextStyle(
                          fontFamily: 'Fredoka',
                          color: Color(0xFF209FA6),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.school,
                          size: 23,
                          color: Colors.orange,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            elevation: 0,
                            primary: Colors.grey.shade200,
                            padding: EdgeInsets.all(size.width * 0.03)),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Education',
                        style: TextStyle(
                          fontFamily: 'Fredoka',
                          color: Color(0xFF209FA6),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          MyFlutterApp.virus,
                          size: 22,
                          color: Colors.pink.shade300,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            elevation: 0,
                            primary: Colors.grey.shade200,
                            padding: EdgeInsets.all(size.width * 0.03)),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Pandemic',
                        style: TextStyle(
                          fontFamily: 'Fredoka',
                          color: Color(0xFF209FA6),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Fredoka',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B2441))),
                  Text('See All',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF209FA6),
                      ))
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: size.height * 0.47,
                width: size.width,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: size.height * 0.35,
                      margin: EdgeInsets.only(bottom: size.width * 0.04),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey.shade300, width: 1),
                            borderRadius:
                                BorderRadius.circular(size.width * 0.08),
                          ),
                          elevation: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04,
                                vertical: size.width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(size.width * 0.07),
                                  child: Image.asset(
                                    '${listCharity[index].image}',
                                    fit: BoxFit.cover,
                                    height: size.height * 0.15,
                                    width: size.width,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.025,
                                ),
                                Text(
                                  '${listCharity[index].title}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Fredoka',
                                    color: Color(0xFF1B2441),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                Text(
                                  'By ${listCharity[index].organization}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Fredoka',
                                    color: Color(0xFF209FA6).withOpacity(0.7),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$${listCharity[index].raisedMoney} Raised',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Fredoka',
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF209FA6),
                                        ),
                                      ),
                                      Text(
                                        'Target - \$' +
                                            format.format(
                                                listCharity[index].targetMoney),
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Fredoka',
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF1B2441)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: listCharity.length,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CreateNewFundPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfilePage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsPage(),
        ));
        break;
    }
  }
}

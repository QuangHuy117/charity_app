// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:charity_app/PaymentPage/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: EdgeInsets.only(
          left: size.width * 0.05,
          right: size.width * 0.05,
          top: size.height * 0.05,
          bottom: size.height * 0.01,
        ),
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Back',
                      style: TextStyle(
                        color: Color(0xFF209FA6),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                        color: Color(0xFF209FA6),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(size.width * 0.07),
                      child: Image(
                        image: AssetImage('assets/images/africa1.jpg'),
                        fit: BoxFit.cover,
                        height: size.height * 0.35,
                        width: size.width * 0.43,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(size.width * 0.07),
                      child: Image(
                        image: AssetImage('assets/images/africa2.jpg'),
                        fit: BoxFit.cover,
                        height: size.height * 0.35,
                        width: size.width * 0.43,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF209FA6).withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: Text(
                            'Education Dono For Poor Child',
                            style: TextStyle(
                              fontSize: 28,
                              color: Color(0xFF1B2441),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          '20 Days Left',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF209FA6).withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'AS',
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF1B2441),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: size.height * 0.055,
                          width: size.width * 0.11,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF209FA6),
                          ),
                          child: Icon(
                            Icons.gps_fixed,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Target amount',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF209FA6).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$10.000',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF1B2441),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.height * 0.055,
                          width: size.width * 0.11,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF209FA6),
                          ),
                          child: Icon(
                            Icons.gps_fixed,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Raised',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF209FA6).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$530.65',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF1B2441),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/images/ncapa_logo.png'),
                      fit: BoxFit.contain,
                      height: size.height * 0.07,
                      width: size.width * 0.09,
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Text(
                      'by',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF209FA6).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    Text(
                      'NCAPA',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF209FA6),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  child: ReadMoreText(
                    "The mission of this donation is to cultivate highly trained and capable Palestinian graduates with a proficiency in conversational English that will lead to their successful participation in the labor. After the crisis, the long-term effects on the well-being of children are still a concern. We're providing clothing, food, shelter, and ensuring children, especially girls, return to school.",
                    trimLines: 4,
                    textAlign: TextAlign.start,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    trimExpandedText: "Show Less",
                    lessStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    moreStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF209FA6).withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  height: size.height * 0.06,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => PaymentPage()));
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(size.width * 0.1),
                                topRight: Radius.circular(size.width * 0.1))),
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('How Much You Want To Donate?'),
                                // Text(('data'))
                              ],
                            ),
                            // children: [
                            //   ListTile(
                            //     leading: Icon(Icons.share),
                            //     title: Text('Share'),
                            //   ),
                            //   ListTile(
                            //     leading: Icon(Icons.copy),
                            //     title: Text('Copy Link'),
                            //   ),
                            //   ListTile(
                            //     leading: Icon(Icons.edit),
                            //     title: Text('Edit'),
                            //   ),
                            // ],
                          );
                        },
                      );
                    },
                    child: Text(
                      'Donate',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF209FA6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

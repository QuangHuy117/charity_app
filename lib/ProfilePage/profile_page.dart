// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:charity_app/CreateNewFundPage/create_new_fund_page.dart';
import 'package:charity_app/ManageFundPage/manage_fund_page.dart';
import 'package:charity_app/models/charity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var format = NumberFormat('#,###,000');

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
      image: 'assets/images/africa3.jpg',
      dateLeft: 20,
      targetMoney: 100000,
      raisedMoney: 12400.85,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(
          left: size.width * 0.03,
          right: size.width * 0.03,
          top: size.height * 0.05,
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: Color(0xFF209FA6),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
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
                  height: size.height * 0.025,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: size.height * 0.9,
                      width: size.width,
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1B2441),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          CircleAvatar(
                            radius: (size.width * 0.085),
                            backgroundColor: Colors.red,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(size.width * 0.085),
                              child: Image(
                                image: AssetImage('assets/images/avatar.jpg'),
                                height: size.height * 0.1,
                                width: size.width * 0.2,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'David William',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: size.width * 0.018,
                                child: Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'davidwilliam@gmail.com',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF209FA6).withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.15),
                            child: Text(
                              'An organization that deals with casualties and prevents warfare',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF209FA6).withOpacity(0.4),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          SizedBox(
                            height: size.height * 0.57,
                            width: size.width,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Container(
                                  height: size.height * 0.35,
                                  margin: EdgeInsets.only(
                                      bottom: size.width * 0.04),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ManageFundDetailPage()));
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.grey.shade300,
                                            width: 1),
                                        borderRadius: BorderRadius.circular(
                                            size.width * 0.08),
                                      ),
                                      elevation: 0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.05,
                                            vertical: size.width * 0.04),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      size.width * 0.07),
                                              child: Image(
                                                image: AssetImage(
                                                    '${listCharity[index].image}'),
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
                                                color: Color(0xFF209FA6)
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.03,
                                            ),
                                            // Row(
                                            //     mainAxisAlignment:
                                            //         MainAxisAlignment
                                            //             .spaceBetween,
                                            //     children: [
                                            // Text(
                                            //   '\$${listCharity[index].raisedMoney} Raised',
                                            //   style: TextStyle(
                                            //     fontSize: 20,
                                            //     fontFamily: 'Fredoka',
                                            //     fontWeight: FontWeight.bold,
                                            //     color: Color(0xFF209FA6),
                                            //   ),
                                            // ),
                                            Text(
                                              'Total Amount - \$' +
                                                  format.format(
                                                      listCharity[index]
                                                          .targetMoney),
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Fredoka',
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF209FA6),
                                              ),
                                            ),
                                            // ]),
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
                    Positioned(
                      bottom: size.height * 0.04,
                      child: Container(
                        height: size.height * 0.065,
                        width: size.width * 0.8,
                        margin:
                            EdgeInsets.symmetric(horizontal: size.width * 0.06),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateNewFundPage()));
                          },
                          child: Text(
                            'Create New',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF209FA6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      size.width * 0.04))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

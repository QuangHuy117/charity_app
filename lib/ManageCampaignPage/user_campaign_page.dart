// ignore_for_file: prefer_const_constructors

import 'package:charity_app/ManageFundPage/user_manage_campaign_page.dart';
import 'package:charity_app/models/charity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CampaignUserPage extends StatefulWidget {
  const CampaignUserPage({Key? key}) : super(key: key);

  @override
  State<CampaignUserPage> createState() => _CampaignUserPageState();
}

class _CampaignUserPageState extends State<CampaignUserPage> {
  var format = NumberFormat('#,###,000');

  List<Charity> listCharity = [
    Charity(
      location: 'Ho Chi Minh City, VietNam',
      title: 'Education Dono For Poor Child',
      topic: 'Education',
      organization: 'NCAPA',
      description:
          'The mission of this donation is to cultivate highly trained and capable Palestinian graduates with a proficiency in conversational English that will lead to their successful participation in the labor.',
      image: 'assets/images/africa1.jpg',
      image2: 'assets/images/africa2.jpg',
      imageLogo: 'assets/images/ncapa_logo.png',
      // dateLeft: 20,
      startDate: '14/02/2022',
      endDate: '30/04/2022',
      status: true,
      peopleJoin: 40,
      targetMoney: 10000,
      // raisedMoney: 530.65,
    ),
    Charity(
      location: 'Ho Chi Minh City, VietNam',
      title: 'Ebola Disease in Africa',
      topic: 'Pandemic',
      organization: 'NCAPA',
      description:
          "After the crisis, the long-term effects on the well-being of children are still a concern. We're providing clothing, food, shelter, and ensuring children, especially girls, return to school.",
      image: 'assets/images/africa3.jpg',
      image2: 'assets/images/africa.jpg',
      imageLogo: 'assets/images/ncapa_logo.png',
      // dateLeft: 20,
      startDate: '14/02/2022',
      endDate: '30/04/2022',
      status: true,
      peopleJoin: 20,
      targetMoney: 100000,
      // raisedMoney: 12400.85,
    ),
    Charity(
      location: 'Ho Chi Minh City, VietNam',
      title: 'Ebola Disease in Africa',
      topic: 'Pandemic',
      organization: 'NCAPA',
      description:
          "After the crisis, the long-term effects on the well-being of children are still a concern. We're providing clothing, food, shelter, and ensuring children, especially girls, return to school.",
      image: 'assets/images/africa2.jpg',
      image2: 'assets/images/africa3.jpg',
      imageLogo: 'assets/images/ncapa_logo.png',
      // dateLeft: 20,
      startDate: '31/12/2021',
      endDate: '01/03/2022',
      status: true,
      peopleJoin: 50,
      targetMoney: 100000,
      // raisedMoney: 12400.85,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                          'Campaign',
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
                      // CircleAvatar(
                      //   radius: (size.width * 0.085),
                      //   backgroundColor: Colors.red,
                      //   child: ClipRRect(
                      //     borderRadius:
                      //         BorderRadius.circular(size.width * 0.085),
                      //     child: Image(
                      //       image: AssetImage('assets/images/avatar.jpg'),
                      //       height: size.height * 0.1,
                      //       width: size.width * 0.2,
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: size.height * 0.01,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       'David William',
                      //       style: TextStyle(
                      //         fontSize: 24,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: size.width * 0.02,
                      //     ),
                      //     CircleAvatar(
                      //       backgroundColor: Colors.blue,
                      //       radius: size.width * 0.018,
                      //       child: Icon(
                      //         Icons.check,
                      //         size: 14,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Text(
                      //   'davidwilliam@gmail.com',
                      //   style: TextStyle(
                      //       fontSize: 15,
                      //       color: Color(0xFF209FA6).withOpacity(0.5)),
                      // ),
                      // SizedBox(
                      //   height: size.height * 0.02,
                      // ),
                      // Container(
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: size.width * 0.15),
                      //   child: Text(
                      //     'An organization that deals with casualties and prevents warfare',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       fontSize: 16,
                      //       color: Color(0xFF209FA6).withOpacity(0.4),
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: size.height * 0.05,
                      // ),
                      SizedBox(
                        height: size.height * 0.83,
                        width: size.width,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              height: size.height * 0.42,
                              margin:
                                  EdgeInsets.only(bottom: size.width * 0.04),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ManageUserCampaignPage(charity: listCharity[index])));
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.grey.shade300, width: 1),
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.05),
                                  ),
                                  elevation: 0,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.04,
                                        vertical: size.width * 0.04),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              size.width * 0.07),
                                          child: Image.asset(
                                            listCharity[index].image,
                                            fit: BoxFit.cover,
                                            height: size.height * 0.15,
                                            width: size.width,
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.025,
                                        ),
                                        Text(
                                          listCharity[index].title,
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFF1B2441),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.01,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: size.width * 0.33,
                                              child: Text(
                                                'By ${listCharity[index].organization}',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xFF209FA6)
                                                      .withOpacity(0.7),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerRight,
                                              width: size.width * 0.5,
                                              child: Text(
                                                listCharity[index].startDate +
                                                    ' - ' +
                                                    listCharity[index].endDate,
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF209FA6)
                                                      .withOpacity(0.7),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: size.height * 0.01,
                                        ),
                                        // Row(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.spaceBetween,
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
                                          'Money - \$' +
                                              format.format(listCharity[index]
                                                  .targetMoney),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF209FA6),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.01,
                                        ),
                                        Text(
                                          'Location - ' +
                                              listCharity[index].location,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF209FA6),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.01,
                                        ),
                                        Text(
                                          'Status: '
                                          '${listCharity[index].status ? 'In Progress' : 'Done'}',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1B2441),
                                          ),
                                        ),
                                        // ]
                                        // ),
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
                      // SizedBox(
                      //   height: size.height * 0.83,
                      //   width: size.width,
                      //   child: ListView.builder(
                      //     itemBuilder: (context, index) {
                      //       return Container(
                      //         height: size.height * 0.35,
                      //         margin:
                      //             EdgeInsets.only(bottom: size.width * 0.04),
                      //         child: GestureDetector(
                      //           onTap: () {
                      //             Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                     builder: (context) =>
                      //                         ManageFundDetailPage()));
                      //           },
                      //           child: Card(
                      //             shape: RoundedRectangleBorder(
                      //               side: BorderSide(
                      //                   color: Colors.grey.shade300, width: 1),
                      //               borderRadius: BorderRadius.circular(
                      //                   size.width * 0.08),
                      //             ),
                      //             elevation: 0,
                      //             child: Container(
                      //               padding: EdgeInsets.symmetric(
                      //                   horizontal: size.width * 0.05,
                      //                   vertical: size.width * 0.04),
                      //               child: Column(
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.start,
                      //                 children: [
                      //                   ClipRRect(
                      //                     borderRadius: BorderRadius.circular(
                      //                         size.width * 0.07),
                      //                     child: Image(
                      //                       image: AssetImage(
                      //                           '${listCharity[index].image}'),
                      //                       fit: BoxFit.cover,
                      //                       height: size.height * 0.15,
                      //                       width: size.width,
                      //                     ),
                      //                   ),
                      //                   SizedBox(
                      //                     height: size.height * 0.025,
                      //                   ),
                      //                   Text(
                      //                     '${listCharity[index].title}',
                      //                     style: TextStyle(
                      //                       fontSize: 22,
                      //                       fontFamily: 'Fredoka',
                      //                       color: Color(0xFF1B2441),
                      //                       fontWeight: FontWeight.bold,
                      //                     ),
                      //                   ),
                      //                   SizedBox(
                      //                     height: size.height * 0.01,
                      //                   ),
                      //                   Text(
                      //                     'By ${listCharity[index].organization}',
                      //                     style: TextStyle(
                      //                       fontSize: 16,
                      //                       fontFamily: 'Fredoka',
                      //                       color: Color(0xFF209FA6)
                      //                           .withOpacity(0.7),
                      //                     ),
                      //                   ),
                      //                   SizedBox(
                      //                     height: size.height * 0.03,
                      //                   ),
                      //                   // Row(
                      //                   //     mainAxisAlignment:
                      //                   //         MainAxisAlignment
                      //                   //             .spaceBetween,
                      //                   //     children: [
                      //                   // Text(
                      //                   //   '\$${listCharity[index].raisedMoney} Raised',
                      //                   //   style: TextStyle(
                      //                   //     fontSize: 20,
                      //                   //     fontFamily: 'Fredoka',
                      //                   //     fontWeight: FontWeight.bold,
                      //                   //     color: Color(0xFF209FA6),
                      //                   //   ),
                      //                   // ),
                      //                   Text(
                      //                     'Total Amount - \$' +
                      //                         format.format(listCharity[index]
                      //                             .targetMoney),
                      //                     style: TextStyle(
                      //                       fontSize: 20,
                      //                       fontFamily: 'Fredoka',
                      //                       fontWeight: FontWeight.bold,
                      //                       color: Color(0xFF209FA6),
                      //                     ),
                      //                   ),
                      //                   // ]),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       );
                      //     },
                      //     itemCount: listCharity.length,
                      //   ),
                      // ),
                    ],
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

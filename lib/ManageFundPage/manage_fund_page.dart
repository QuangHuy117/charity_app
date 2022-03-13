// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:charity_app/ManageLocationPage/manage_location_page.dart';
import 'package:charity_app/ManageTaskPage/manage_task_page.dart';
import 'package:charity_app/ManageVolunteerPage/manage_volunteer_page.dart';
import 'package:charity_app/PendingRequestPage/pending_request_page.dart';
import 'package:flutter/material.dart';

class ManageFundDetailPage extends StatefulWidget {
  const ManageFundDetailPage({Key? key}) : super(key: key);

  @override
  State<ManageFundDetailPage> createState() => _ManageFundDetailPageState();
}

class _ManageFundDetailPageState extends State<ManageFundDetailPage> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  height: size.height * 0.05,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(size.width * 0.07),
                  child: Image(
                    image: AssetImage('assets/images/africa1.jpg'),
                    fit: BoxFit.cover,
                    height: size.height * 0.2,
                    width: size.width,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Education Dono For Poor Child',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B2441),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'The mission of this donation is to cultivate highly trained and capable Palestinian graduates with a proficiency in conversational English that will lead to their successful participation in the labor.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1B2441),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Divider(
                  color: Color(0xFF209FA6),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                SizedBox(
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {
                      selectedItem(context, 1);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pending Request',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF209FA6),
                            )),
                        Icon(
                          Icons.arrow_right,
                          size: 30,
                          color: Color(0xFF209FA6),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {
                      selectedItem(context, 2);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Manage Volunteer',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF209FA6),
                            )),
                        Icon(
                          Icons.arrow_right,
                          size: 30,
                          color: Color(0xFF209FA6),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {
                      selectedItem(context, 3);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Manage Task',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF209FA6),
                            )),
                        Icon(
                          Icons.arrow_right,
                          size: 30,
                          color: Color(0xFF209FA6),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {
                      selectedItem(context, 4);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Manage Location',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF209FA6),
                            )),
                        Icon(
                          Icons.arrow_right,
                          size: 30,
                          color: Color(0xFF209FA6),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: size.height * 0.02,
                // ),
                // SizedBox(
                //   height: size.height * 0.06,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       primary: Colors.white,
                //       elevation: 0,
                //     ),
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text('Manage Recipients',
                //             style: TextStyle(
                //               fontSize: 18,
                //               color: Color(0xFF209FA6),
                //             )),
                //         Icon(
                //           Icons.arrow_right,
                //           size: 30,
                //           color: Color(0xFF209FA6),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: size.height * 0.02,
                // ),
              ],
            ),
          )),
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PendingRequestPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ManageVolunteerPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ManageTaskPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ManageLocationPage(),
        ));
        break;
    }
  }
}

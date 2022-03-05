// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields,

import 'package:charity_app/models/volunteer.dart';
import 'package:flutter/material.dart';

class PendingRequestPage extends StatefulWidget {
  const PendingRequestPage({Key? key}) : super(key: key);

  @override
  State<PendingRequestPage> createState() => _PendingRequestPageState();
}

class _PendingRequestPageState extends State<PendingRequestPage> {
  List<Volunteer> _listVolunteer = [
    Volunteer(
        name: 'John Doe',
        description: 'Always want to help those in need in Africa'),
    Volunteer(
        name: 'Tristin Grimes',
        description: 'Helped and participated in many charity campaigns'),
    Volunteer(
        name: 'Jany Lynch',
        description:
            'Always wanted to participate in many charity campaigns to be able to help people in Africa'),
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

            SizedBox(
              height: size.height * 0.85,
              width: size.width,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: size.height * 0.2,
                    width: size.width,
                    margin: EdgeInsets.only(bottom: size.width * 0.05),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(size.width * 0.05),
                      ),
                      elevation: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _listVolunteer[index].name,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF1B2441),
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              endIndent: size.width * 0.2,
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              _listVolunteer[index].description,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF1B2441),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: size.height * 0.04,
                                  width: size.width * 0.25,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             CreateNewFundPage()));
                                    },
                                    child: Text(
                                      'Accept',
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
                                                size.width * 0.02))),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.04,
                                  width: size.width * 0.25,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             CreateNewFundPage()));
                                    },
                                    child: Text(
                                      'Deny',
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
                                                size.width * 0.02))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _listVolunteer.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

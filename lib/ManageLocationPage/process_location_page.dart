// ignore_for_file: prefer_const_constructors

import 'package:charity_app/ManageRecipientsPage/manage_recipients_page.dart';
import 'package:charity_app/models/location.dart';
import 'package:flutter/material.dart';

class ProcessLocationPage extends StatelessWidget {
  const ProcessLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Location> _listLocation = [
      Location('TP Hồ Chí Minh', '10/03/2022', 100, 'Processing'),
      Location('TP Hồ Chí Minh', '12/03/2022', 200, 'Pending'),
      Location('TP Đà Nẵng', '10/03/2022', 150, 'Pending'),
      Location('TP Hà Nội', '11/03/2022', 150, 'Processing'),
    ];

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height * 0.65,
        width: size.width,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
                height: size.height * 0.25,
                margin: EdgeInsets.only(bottom: size.width * 0.04),
                child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             ManageFundDetailPage()));
                    },
                    child: Card(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Colors.grey.shade300, width: 1),
                          borderRadius:
                              BorderRadius.circular(size.width * 0.05),
                        ),
                        elevation: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Destination : ' +
                                    _listLocation[index].location,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Text(
                                'Date : ' + _listLocation[index].date,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color(0xFF209FA6).withOpacity(0.5),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                'Number of recipients : ' +
                                    _listLocation[index].numPeople.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color(0xFF209FA6).withOpacity(0.5),
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
                                    'Status : ' + _listLocation[index].status,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF209FA6)
                                          .withOpacity(0.8),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.045,
                                    width: size.width * 0.38,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ManageRecipientsPage()));
                                      },
                                      child: Text(
                                        'Manage Recipients',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF209FA6),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      size.width * 0.01))),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))));
          },
          itemCount: _listLocation.length,
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:charity_app/ManageLocationPage/location_detail_page.dart';
import 'package:charity_app/ManageRecipientsPage/manage_recipients_page.dart';
import 'package:charity_app/models/location.dart';
import 'package:flutter/material.dart';

class ProcessLocationPage extends StatefulWidget {
  final List<Location> listLocation;
  const ProcessLocationPage({Key? key, required this.listLocation})
      : super(key: key);

  @override
  State<ProcessLocationPage> createState() => _ProcessLocationPageState();
}

class _ProcessLocationPageState extends State<ProcessLocationPage> {
  Future updateLocation(BuildContext context, int index) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                LocationDetailPage(location: widget.listLocation[index])));
    setState(() {
      if (result == null) {
        return;
      } else {
        setState(() {
          widget.listLocation[index] = result;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                      updateLocation(context, index);
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
                                'Destination : ' + widget.listLocation[index].location,
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
                                'Date : ' + widget.listLocation[index].date,
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
                                    widget.listLocation[index].numPeople.toString(),
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
                                    'Status : ' + widget.listLocation[index].status,
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
                                    width: size.width * 0.4,
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
          itemCount: widget.listLocation.length,
        ),
      ),
    );
  }
}

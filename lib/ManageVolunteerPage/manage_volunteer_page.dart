// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:charity_app/models/volunteer.dart';
import 'package:flutter/material.dart';

class ManageVolunteerPage extends StatefulWidget {
  const ManageVolunteerPage({Key? key}) : super(key: key);

  @override
  State<ManageVolunteerPage> createState() => _ManageVolunteerPageState();
}

class _ManageVolunteerPageState extends State<ManageVolunteerPage> {
  String? _dropDownValue;
  List<String?> listRequest = [];
  List<Volunteer> _listVolunteer = [
    Volunteer(
        name: 'Katherine Yost',
        description: 'Always want to help those in need in Africa'),
    Volunteer(
        name: 'Taya Kuhlman',
        description: 'Helped and participated in many charity campaigns'),
    Volunteer(
        name: 'Dave White',
        description:
            'Always wanted to participate in many charity campaigns to be able to help people in Africa'),
    Volunteer(
        name: 'Tyrel Wiza',
        description:
            'Looking forward to donating to help the African community'),
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
                height: size.height * 0.87,
                width: size.width,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    listRequest.add(_dropDownValue);
                    return Container(
                      height: size.height * 0.28,
                      width: size.width,
                      margin: EdgeInsets.only(bottom: size.width * 0.05),
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
                              Container(
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400, width: 1),
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.02)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.02),
                                  child: DropdownButton<String>(
                                    underline: SizedBox(),
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 35,
                                    hint: Text('Apply role'),
                                    isExpanded: true,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    value: listRequest[index],
                                    onChanged: (newValue) {
                                      setState(() {
                                        listRequest[index] = newValue;
                                      });
                                    },
                                    items: [
                                      'Transport Support',
                                      'Medical Support',
                                      'Financial Support',
                                      'Education Support'
                                    ].map((valueItem) {
                                      return DropdownMenuItem(
                                        value: valueItem,
                                        child: Text(valueItem),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              SizedBox(
                                height: size.height * 0.04,
                                width: size.width * 0.20,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             CreateNewFundPage()));
                                  },
                                  child: Text(
                                    'Save',
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
      ),
    );
  }
}

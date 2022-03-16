// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:charity_app/ManageLocationPage/complete_location_page.dart';
import 'package:charity_app/ManageLocationPage/create_location_page.dart';
import 'package:charity_app/ManageLocationPage/process_location_page.dart';
import 'package:charity_app/models/location.dart';
import 'package:flutter/material.dart';

class ManageLocationPage extends StatefulWidget {
  const ManageLocationPage({Key? key}) : super(key: key);

  @override
  State<ManageLocationPage> createState() => _ManageLocationPageState();
}

class _ManageLocationPageState extends State<ManageLocationPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Location> _listLocation = [
    Location('Ho Chi Minh City', '10/03/2022', 100, 'Processing'),
    Location('Ho Chi Minh City', '12/03/2022', 200, 'Pending'),
    Location('Ho Chi Minh City', '11/03/2022', 150, 'Processing'),
  ];

  Future addNewLocation(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CreateLocationPage()),
    );
    setState(() {
      if (result == null) {
        return;
      } else {
        setState(() {
          _listLocation.add(result);
        });
      }
    });
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
          child: Stack(children: [
            SizedBox(
              height: size.height * 0.95,
              width: size.width,
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
                      height: size.height * 0.02,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Location List',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B2441),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                        height: size.height * 0.05,
                        width: size.width,
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: TextFormField(
                          textAlign: TextAlign.center,
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
                            prefixIcon: Icon(Icons.search),
                          ),
                        )),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Container(
                      height: size.height * 0.06,
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.1),
                      child: TabBar(
                        controller: _tabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            size.width * 0.03,
                          ),
                          color: Color(0xFF209FA6).withOpacity(0.8),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: [
                          Tab(
                            text: 'Process',
                          ),
                          Tab(
                            text: 'Complete',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          ProcessLocationPage(
                            listLocation: _listLocation,
                          ),
                          CompleteLocationPage(),
                        ],
                      ),
                    ),
                  ]),
            ),
            Positioned(
              bottom: size.width * 0.03,
              child: Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: ElevatedButton(
                  onPressed: () {
                    addNewLocation(context);
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
                          borderRadius:
                              BorderRadius.circular(size.width * 0.04))),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

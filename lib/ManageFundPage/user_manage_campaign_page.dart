// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:charity_app/ManageTaskPage/user_manage_task_page.dart';
import 'package:charity_app/models/charity.dart';
import 'package:flutter/material.dart';

class ManageUserCampaignPage extends StatefulWidget {
  final Charity charity;
  const ManageUserCampaignPage({Key? key, required this.charity})
      : super(key: key);

  @override
  State<ManageUserCampaignPage> createState() => _ManageUserCampaignPageState();
}

class _ManageUserCampaignPageState extends State<ManageUserCampaignPage> {
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
                    image: AssetImage(widget.charity.image),
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
                    widget.charity.title,
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
                    widget.charity.description,
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
          builder: (context) => ManageUserTaskPage(),
        ));
        break;
    }
  }
}

// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:charity_app/ManageRecipientsPage/create_recipient_page.dart';
import 'package:charity_app/ManageRecipientsPage/recipient_detail_page.dart';
import 'package:charity_app/models/recipient.dart';
import 'package:flutter/material.dart';

class ManageRecipientsPage extends StatefulWidget {
  const ManageRecipientsPage({Key? key}) : super(key: key);

  @override
  State<ManageRecipientsPage> createState() => _ManageRecipientsPageState();
}

class _ManageRecipientsPageState extends State<ManageRecipientsPage> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();

  List<Recipient> _listRecipients = [
    Recipient(
        'Raphaelle Veum',
        '7471 Darrel Circles Suite 302 Schmittborough',
        'Female',
        '411722484',
        '423-794-4316',
        10000,
        22,
        'September',
        2000,
        '28 Jan 2021'),
    Recipient(
        'Sandra G Wells',
        '1658 Alexandro Fork Suite 966 Hackettmouth',
        'Female',
        '594670830',
        '904-910-7748',
        10000,
        22,
        'September',
        2000,
        '28 Jan 2021'),
    Recipient(
        'Jonathon Bergnaum',
        '62624 Leffler Port Suite 242 Boehmport',
        'Male',
        '528112398',
        '801-619-7121',
        15000,
        13,
        'November',
        1995,
        '21 Dec 2020'),
    Recipient('Avery Johnston', '67551 Emmerich Canyon West Darenland', 'Male',
        '633529159', '817-996-6431', 12000, 2, 'February', 1972, '18 Oct 2021'),
    Recipient('Brice Zulauf', '918 Keeling Lights South Cynthia', 'Male',
        '310566483', '812-316-7353', 8000, 5, 'October', 1981, '12 Aug 2020'),
    Recipient(
        'Benedict Beahan',
        '1296 Leanna Islands Apt. 385 New Eulalia',
        'Female',
        '621010578',
        '951-566-4872',
        5000,
        28,
        'March',
        1998,
        '25 Nov 2021'),
  ];

  Future updateRecipient(BuildContext context, int index) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RecipientDetailPage(
                  recipient: _listRecipients[index],
                )));
    setState(() {
      if (result == null) {
        return;
      } else {
        setState(() {
          _listRecipients[index] = result;
        });
      }
    });
  }

  Future addNewRecipient(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CreateRecipientPage()),
    );
    setState(() {
      if (result == null) {
        return;
      } else {
        setState(() {
          _listRecipients.add(result);
        });
      }
    });
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
          child: SizedBox(
            height: size.height * 0.95,
            width: size.width,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: size.width * 0.04,
                    child: Icon(
                      Icons.restore,
                      size: 30,
                      color: Color(0xFF209FA6),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Manage Recipients',
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
              Container(
                  height: size.height * 0.05,
                  width: size.width,
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.width * 0.02),
                          borderSide: BorderSide(color: Colors.grey.shade300)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.width * 0.02),
                          borderSide: BorderSide(color: Colors.grey.shade300)),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.cancel_outlined),
                    ),
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                height: size.height * 0.65,
                width: size.width,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: size.height * 0.13,
                      width: size.width,
                      child: GestureDetector(
                        onTap: () {
                          updateRecipient(context, index);
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: (size.width * 0.07),
                              backgroundColor: Colors.red,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(size.width * 0.07),
                                child: Image(
                                  image:
                                      AssetImage('assets/images/avatar1.jpg'),
                                  height: size.height * 0.1,
                                  width: size.width * 0.2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _listRecipients[index].name,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                SizedBox(
                                  width: size.width * 0.75,
                                  child: Text(
                                    _listRecipients[index].address,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: _listRecipients.length,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: ElevatedButton(
                  onPressed: () {
                    addNewRecipient(context);
                  },
                  child: Text(
                    ' Create New',
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
            ]),
          ),
        ),
      ),
    );
  }

  // createBottomSheet(BuildContext context, double height, double width) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     backgroundColor: Colors.white,
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(width * 0.1),
  //             topRight: Radius.circular(width * 0.1))),
  //     builder: (context) {
  //       return Padding(
  //         padding: EdgeInsets.symmetric(vertical: width * 0.05),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               'Add new recipient',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 color: Color(0xFF1B2441),
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             SizedBox(
  //               height: height * 0.02,
  //             ),
  //             Container(
  //                 margin: EdgeInsets.symmetric(horizontal: width * 0.1),
  //                 child: TextFormField(
  //                   controller: name,
  //                   textAlign: TextAlign.center,
  //                   decoration: InputDecoration(
  //                       enabledBorder: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(20),
  //                           borderSide:
  //                               BorderSide(color: Colors.grey.shade300)),
  //                       focusedBorder: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(20),
  //                           borderSide:
  //                               BorderSide(color: Colors.grey.shade300)),
  //                       hintText: "Full Name",
  //                       hintStyle: TextStyle(
  //                           fontWeight: FontWeight.w700,
  //                           color: Color(0xFF209FA6).withOpacity(0.4))),
  //                 )),
  //             SizedBox(
  //               height: height * 0.02,
  //             ),
  //             Container(
  //                 margin: EdgeInsets.symmetric(horizontal: width * 0.1),
  //                 child: TextFormField(
  //                   controller: address,
  //                   minLines: 2,
  //                   maxLines: null,
  //                   keyboardType: TextInputType.multiline,
  //                   // textInputAction: TextInputAction.done,
  //                   textAlign: TextAlign.center,
  //                   decoration: InputDecoration(
  //                       enabledBorder: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(20),
  //                           borderSide:
  //                               BorderSide(color: Colors.grey.shade300)),
  //                       focusedBorder: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(20),
  //                           borderSide:
  //                               BorderSide(color: Colors.grey.shade300)),
  //                       hintText: "Address",
  //                       hintStyle: TextStyle(
  //                           fontWeight: FontWeight.w700,
  //                           color: Color(0xFF209FA6).withOpacity(0.4))),
  //                 )),
  //             SizedBox(
  //               height: height * 0.02,
  //             ),
  //             Container(
  //               height: height * 0.06,
  //               width: width * 0.8,
  //               margin: EdgeInsets.symmetric(horizontal: width * 0.06),
  //               child: ElevatedButton(
  //                 onPressed: () {

  //                   Navigator.pop(context);
  //                   // _listRecipients.add(Recipient(name.text, address.text));
  //                   // name.clear();
  //                   // address.clear();
  //                 },
  //                 child: Text(
  //                   'Save',
  //                   style: TextStyle(
  //                     fontWeight: FontWeight.w700,
  //                     fontSize: 18,
  //                     color: Colors.white.withOpacity(0.8),
  //                   ),
  //                 ),
  //                 style: ElevatedButton.styleFrom(
  //                     primary: Color(0xFF209FA6),
  //                     shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(width * 0.04))),
  //               ),
  //             ),
  //             Padding(
  //                 padding: EdgeInsets.only(
  //               bottom: MediaQuery.of(context).viewInsets.bottom,
  //             )),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}

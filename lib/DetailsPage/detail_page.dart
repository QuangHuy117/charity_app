// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:charity_app/models/charity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

class DetailsPage extends StatefulWidget {
  final Charity charity;
  final int role;
  const DetailsPage({Key? key, required this.charity, required this.role}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var format = NumberFormat('#,###,000');
  bool joinStatus = true;

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
          bottom: size.height * 0.01,
        ),
        child: SingleChildScrollView(
          child: Container(
            height: size.height * 0.95,
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
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(size.width * 0.07),
                      child: Image(
                        image: AssetImage(widget.charity.image),
                        fit: BoxFit.cover,
                        height: size.height * 0.35,
                        width: size.width * 0.43,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(size.width * 0.07),
                      child: Image(
                        image: AssetImage(widget.charity.image2),
                        fit: BoxFit.cover,
                        height: size.height * 0.35,
                        width: size.width * 0.43,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  widget.charity.topic,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF209FA6).withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width,
                      child: Text(
                        widget.charity.title,
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF1B2441),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      widget.charity.startDate + " - " + widget.charity.endDate,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF1B2441).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  children: [
                    Icon(Icons.place, size: 28, color: Color(0xFF1B2441).withOpacity(0.5),),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    Text(
                      widget.charity.location,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF1B2441).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: size.height * 0.055,
                          width: size.width * 0.11,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF209FA6),
                          ),
                          child: Icon(
                            Icons.gps_fixed,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Money Raised',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF209FA6).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$' + format.format(widget.charity.targetMoney),
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF1B2441),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      widget.charity.peopleJoin.toString() +
                          ' people have joined',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF1B2441).withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   width: size.width * 0.08,
                // ),
                // Row(
                //   children: [
                //     Container(
                //       height: size.height * 0.055,
                //       width: size.width * 0.11,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(15),
                //         color: Color(0xFF209FA6),
                //       ),
                //       child: Icon(
                //         Icons.gps_fixed,
                //         color: Colors.white,
                //       ),
                //     ),
                //     SizedBox(
                //       width: size.width * 0.03,
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'Raised',
                //           style: TextStyle(
                //             fontSize: 18,
                //             color: Color(0xFF209FA6).withOpacity(0.5),
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         Text(
                //           '\$530.65',
                //           style: TextStyle(
                //             fontSize: 18,
                //             color: Color(0xFF1B2441),
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                //   ],
                // ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage(widget.charity.imageLogo),
                          fit: BoxFit.contain,
                          height: size.height * 0.07,
                          width: size.width * 0.09,
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Text(
                          'by',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF209FA6).withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Text(
                          widget.charity.organization,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF209FA6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    widget.role == 2 ? Container(
                      height: size.height * 0.045,
                      width: size.width * 0.25,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            joinStatus = !joinStatus;
                          });
                        },
                        child: Text(
                          joinStatus ? 'Join' : 'Cancel',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: joinStatus
                                ? Color(0xFF209FA6)
                                : Colors.red.shade300,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(size.width * 0.02))),
                      ),
                    ) : Container(),
                  ],
                ),
                SizedBox(
                  child: ReadMoreText(
                    widget.charity.description,
                    trimLines: 4,
                    textAlign: TextAlign.start,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    trimExpandedText: "Show Less",
                    lessStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    moreStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF209FA6).withOpacity(0.5),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: size.height * 0.02,
                // ),
                // Container(
                //   height: size.height * 0.06,
                //   width: size.width,
                //   margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                //   child: ElevatedButton(
                //     onPressed: () {
                //       showModalBottomSheet(
                //         context: context,
                //         isScrollControlled: true,
                //         backgroundColor: Colors.white,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.only(
                //                 topLeft: Radius.circular(size.width * 0.1),
                //                 topRight: Radius.circular(size.width * 0.1))),
                //         builder: (context) {
                //           return Padding(
                //             padding: EdgeInsets.symmetric(
                //                 vertical: size.width * 0.05),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               mainAxisSize: MainAxisSize.min,
                //               children: [
                //                 Text(
                //                   'How Much You Want To Donate?',
                //                   style: TextStyle(
                //                     fontSize: 20,
                //                     color: Color(0xFF1B2441),
                //                     fontWeight: FontWeight.bold,
                //                   ),
                //                 ),
                //                 SizedBox(
                //                   height: size.height * 0.02,
                //                 ),
                //                 Container(
                //                     height: size.height * 0.06,
                //                     width: size.width * 0.8,
                //                     margin: EdgeInsets.symmetric(
                //                         horizontal: size.width * 0.06),
                //                     child: TextFormField(
                //                       readOnly: true,
                //                       enableInteractiveSelection: true,
                //                       onTap: () {
                //                         setState(() {
                //                           money.text = '50';
                //                         });
                //                       },
                //                       textAlign: TextAlign.center,
                //                       decoration: InputDecoration(
                //                         enabledBorder: OutlineInputBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.03),
                //                             borderSide: BorderSide(
                //                                 color: Colors.grey.shade300)),
                //                         focusedBorder: OutlineInputBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.03),
                //                             borderSide:
                //                                 BorderSide(color: Colors.blue)),
                //                         hintText: "\$50",
                //                         hintStyle: TextStyle(
                //                           fontSize: 18,
                //                           color: Color(0xFF1B2441),
                //                           fontWeight: FontWeight.bold,
                //                         ),
                //                       ),
                //                     )),
                //                 SizedBox(
                //                   height: size.height * 0.02,
                //                 ),
                //                 Container(
                //                     height: size.height * 0.06,
                //                     width: size.width * 0.8,
                //                     margin: EdgeInsets.symmetric(
                //                         horizontal: size.width * 0.06),
                //                     child: TextFormField(
                //                       readOnly: true,
                //                       enableInteractiveSelection: true,
                //                       onTap: () {
                //                         setState(() {
                //                           money.text = '100';
                //                         });
                //                       },
                //                       textAlign: TextAlign.center,
                //                       decoration: InputDecoration(
                //                         enabledBorder: OutlineInputBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.03),
                //                             borderSide: BorderSide(
                //                                 color: Colors.grey.shade300)),
                //                         focusedBorder: OutlineInputBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.03),
                //                             borderSide:
                //                                 BorderSide(color: Colors.blue)),
                //                         hintText: "\$100",
                //                         hintStyle: TextStyle(
                //                           fontSize: 18,
                //                           color: Color(0xFF1B2441),
                //                           fontWeight: FontWeight.bold,
                //                         ),
                //                       ),
                //                     )),
                //                 SizedBox(
                //                   height: size.height * 0.02,
                //                 ),
                //                 Container(
                //                     height: size.height * 0.06,
                //                     width: size.width * 0.8,
                //                     margin: EdgeInsets.symmetric(
                //                         horizontal: size.width * 0.06),
                //                     child: TextFormField(
                //                       readOnly: true,
                //                       enableInteractiveSelection: true,
                //                       onTap: () {
                //                         setState(() {
                //                           money.text = '200';
                //                         });
                //                       },
                //                       textAlign: TextAlign.center,
                //                       decoration: InputDecoration(
                //                         enabledBorder: OutlineInputBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.03),
                //                             borderSide: BorderSide(
                //                                 color: Colors.grey.shade300)),
                //                         focusedBorder: OutlineInputBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.03),
                //                             borderSide:
                //                                 BorderSide(color: Colors.blue)),
                //                         hintText: "\$200",
                //                         hintStyle: TextStyle(
                //                           fontSize: 18,
                //                           color: Color(0xFF1B2441),
                //                           fontWeight: FontWeight.bold,
                //                         ),
                //                       ),
                //                     )),
                //                 SizedBox(
                //                   height: size.height * 0.02,
                //                 ),
                //                 Container(
                //                     height: size.height * 0.06,
                //                     width: size.width * 0.8,
                //                     margin: EdgeInsets.symmetric(
                //                         horizontal: size.width * 0.06),
                //                     child: TextFormField(
                //                       readOnly: true,
                //                       enableInteractiveSelection: true,
                //                       onTap: () {
                //                         setState(() {
                //                           money.text = '500';
                //                         });
                //                       },
                //                       textAlign: TextAlign.center,
                //                       decoration: InputDecoration(
                //                         enabledBorder: OutlineInputBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.03),
                //                             borderSide: BorderSide(
                //                                 color: Colors.grey.shade300)),
                //                         focusedBorder: OutlineInputBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.03),
                //                             borderSide:
                //                                 BorderSide(color: Colors.blue)),
                //                         hintText: "\$500",
                //                         hintStyle: TextStyle(
                //                           fontSize: 18,
                //                           color: Color(0xFF1B2441),
                //                           fontWeight: FontWeight.bold,
                //                         ),
                //                       ),
                //                     )),
                //                 SizedBox(
                //                   height: size.height * 0.02,
                //                 ),
                //                 Text(
                //                   'Or',
                //                   style: TextStyle(
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.bold,
                //                     color: Color(0xFF209FA6).withOpacity(0.5),
                //                   ),
                //                 ),
                //                 SizedBox(
                //                   height: size.height * 0.02,
                //                 ),
                //                 Container(
                //                     height: size.height * 0.06,
                //                     width: size.width * 0.8,
                //                     margin: EdgeInsets.symmetric(
                //                         horizontal: size.width * 0.06),
                //                     child: TextFormField(
                //                       controller: money,
                //                       textAlign: TextAlign.center,
                //                       style: TextStyle(
                //                         fontSize: 18,
                //                         color: Color(0xFF1B2441),
                //                         fontWeight: FontWeight.bold,
                //                       ),
                //                       decoration: InputDecoration(
                //                           enabledBorder: OutlineInputBorder(
                //                               borderRadius:
                //                                   BorderRadius.circular(
                //                                       size.width * 0.03),
                //                               borderSide: BorderSide(
                //                                   color: Colors.grey)),
                //                           focusedBorder: OutlineInputBorder(
                //                               borderRadius:
                //                                   BorderRadius.circular(
                //                                       size.width * 0.03),
                //                               borderSide: BorderSide(
                //                                   color: Colors.blue)),
                //                           hintText: "Enter Here",
                //                           hintStyle: TextStyle(
                //                               fontSize: 18,
                //                               fontWeight: FontWeight.w700,
                //                               color: Color(0xFF209FA6)
                //                                   .withOpacity(0.4))),
                //                     )),
                //                 SizedBox(
                //                   height: size.height * 0.02,
                //                 ),
                //                 Container(
                //                   height: size.height * 0.06,
                //                   width: size.width * 0.8,
                //                   margin: EdgeInsets.symmetric(
                //                       horizontal: size.width * 0.06),
                //                   child: ElevatedButton(
                //                     onPressed: () {
                //                       Navigator.pop(context);
                //                       Navigator.push(
                //                           context,
                //                           MaterialPageRoute(
                //                               builder: (context) => PaymentPage(
                //                                     money: money.text,
                //                                   )));
                //                     },
                //                     child: Text(
                //                       'Donate',
                //                       style: TextStyle(
                //                         fontWeight: FontWeight.w700,
                //                         fontSize: 18,
                //                         color: Colors.white.withOpacity(0.8),
                //                       ),
                //                     ),
                //                     style: ElevatedButton.styleFrom(
                //                         primary: Color(0xFF209FA6),
                //                         shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(
                //                                 size.width * 0.04))),
                //                   ),
                //                 ),
                //                 Padding(
                //                     padding: EdgeInsets.only(
                //                   bottom:
                //                       MediaQuery.of(context).viewInsets.bottom,
                //                 )),
                //               ],
                //             ),
                //           );
                //         },
                //       );
                //     },
                //     child: Text(
                //       'Donate',
                //       style: TextStyle(
                //         fontWeight: FontWeight.w700,
                //         fontSize: 18,
                //         color: Colors.white.withOpacity(0.8),
                //       ),
                //     ),
                //     style: ElevatedButton.styleFrom(
                //         primary: Color(0xFF209FA6),
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20))),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

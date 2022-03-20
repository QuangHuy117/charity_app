// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:charity_app/ManageTaskPage/taks_detail_page.dart';
import 'package:charity_app/models/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

class ManageTaskPage extends StatefulWidget {
  const ManageTaskPage({Key? key}) : super(key: key);

  @override
  State<ManageTaskPage> createState() => _ManageTaskPageState();
}

class _ManageTaskPageState extends State<ManageTaskPage> {
  String? _dropDownValue;
  TextEditingController nameCre = TextEditingController();
  TextEditingController descriptionCre = TextEditingController();
  TextEditingController startDateCre = TextEditingController();
  TextEditingController endDateCre = TextEditingController();
  TextEditingController numberCre = TextEditingController();

  var format = DateFormat('dd/MM/yyyy');

  List<Task> _listTask = [
    Task(
        name: 'Distributing gifts to children',
        location: 'District 1',
        startDate: '15/03/2022',
        endDate: '15/05/2022',
        numberMember: 5,
        description:
            'Take out the gift and divide it equally among the children in the orphanage',
        status: true,
        underTaken:
            'Dan Hermann, Theresa Balistreri, Rico Veum, Anthony Cormier, Eddie Purdy, '),
    Task(
        name: 'Task 2',
        location: 'District 2',
        startDate: '20/03/2022',
        endDate: '20/05/2022',
        numberMember: 2,
        description: 'Going to help and teach the children in the ABC City',
        status: true,
        underTaken:
            'Lolita Brown, Maud Kunze, Trenton Altenwerth, Jarred Nolan, Felton King, '),
    Task(
        name: 'Task 3',
        location: 'District 3',
        startDate: '25/03/2022',
        endDate: '25/05/2022',
        numberMember: 8,
        description: 'Going to help and teach the children in the DEF City',
        status: true,
        underTaken:
            'Neil Nicolas, Simone Hauck, Monica Smitham, Alanna Labadie, Garnett Braun, '),
  ];

  Future updateTask(BuildContext context, int index) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailTaskPage(task: _listTask[index])));
    setState(() {
      if (result == null) {
        return;
      } else {
        setState(() {
          _listTask[index] = result;
        });
      }
    });
  }

  @override
  void initState() {
    startDateCre.text = format.format(DateTime.now());
    endDateCre.text = format.format(DateTime.now().add(Duration(days: 1)));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    startDateCre.dispose();
    endDateCre.dispose();
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
                height: size.height,
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
                          'Task List',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: size.height * 0.055,
                              width: size.width * 0.75,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          size.width * 0.03),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          size.width * 0.03),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300)),
                                  hintText: 'Search task...',
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              )),
                          Container(
                            height: size.height * 0.055,
                            width: size.width * 0.11,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(size.width * 0.03),
                              color: Color(0xFF209FA6),
                            ),
                            child: Icon(
                              Icons.search,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.055,
                            width: size.width * 0.4,
                            child: ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(size.width * 0.1),
                                          topRight: Radius.circular(
                                              size.width * 0.1))),
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: size.width * 0.05),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Create new task',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xFF1B2441),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.02,
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal:
                                                        size.width * 0.07),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Task Name',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          color: Colors.grey),
                                                    ),
                                                    TextFormField(
                                                      controller: nameCre,
                                                      textAlign:
                                                          TextAlign.center,
                                                      decoration:
                                                          InputDecoration(
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    size.width *
                                                                        0.03),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300)),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    size.width *
                                                                        0.03),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300)),
                                                        // hintText: "Task Name",
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight:
                                                        //         FontWeight.w700,
                                                        //     color: Color(0xFF209FA6)
                                                        //         .withOpacity(0.4))
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: size.height * 0.01,
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal:
                                                        size.width * 0.07),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Task Location',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          color: Colors.grey),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: size.width *
                                                              0.01),
                                                      height:
                                                          size.height * 0.06,
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.grey
                                                                  .shade400,
                                                              width: 1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(size
                                                                          .width *
                                                                      0.03)),
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    size.width *
                                                                        0.02),
                                                        child: StatefulBuilder(
                                                          builder: (context,
                                                              setState) {
                                                            return DropdownButton<
                                                                String>(
                                                              underline:
                                                                  SizedBox(),
                                                              hint: Text(
                                                                'Choose location',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF209FA6),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18,
                                                                ),
                                                              ),
                                                              elevation: 1,
                                                              icon: Icon(
                                                                Icons
                                                                    .arrow_drop_down,
                                                                color: Color(
                                                                    0xFF209FA6),
                                                              ),
                                                              iconSize: 35,
                                                              isExpanded: true,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF209FA6),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18,
                                                              ),
                                                              value:
                                                                  _dropDownValue,
                                                              onChanged:
                                                                  (newValue) {
                                                                setState(() {
                                                                  _dropDownValue =
                                                                      newValue!;
                                                                });
                                                              },
                                                              items: [
                                                                'District 1',
                                                                'District 2',
                                                                'District 3',
                                                              ].map(
                                                                  (valueItem) {
                                                                return DropdownMenuItem(
                                                                  value:
                                                                      valueItem,
                                                                  child: Text(
                                                                      valueItem),
                                                                );
                                                              }).toList(),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: size.height * 0.01,
                                            ),
                                            Container(
                                              width: size.width,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal:
                                                      size.width * 0.07),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Start Date',
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.grey),
                                                      ),
                                                      SizedBox(
                                                        width: size.width * 0.4,
                                                        child: TextFormField(
                                                          controller:
                                                              startDateCre,
                                                          textAlign:
                                                              TextAlign.center,
                                                          decoration:
                                                              InputDecoration(
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        size.width *
                                                                            0.03),
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300)),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        size.width *
                                                                            0.03),
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300)),
                                                            // hintText: "Task Name",
                                                            // hintStyle: TextStyle(
                                                            //     fontWeight:
                                                            //         FontWeight.w700,
                                                            //     color: Color(0xFF209FA6)
                                                            //         .withOpacity(0.4))
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'End Date',
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.grey),
                                                      ),
                                                      SizedBox(
                                                        width: size.width * 0.4,
                                                        child: TextFormField(
                                                          controller:
                                                              endDateCre,
                                                          textAlign:
                                                              TextAlign.center,
                                                          decoration:
                                                              InputDecoration(
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        size.width *
                                                                            0.03),
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300)),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        size.width *
                                                                            0.03),
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300)),
                                                            // hintText: "Task Name",
                                                            // hintStyle: TextStyle(
                                                            //     fontWeight:
                                                            //         FontWeight.w700,
                                                            //     color: Color(0xFF209FA6)
                                                            //         .withOpacity(0.4))
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.01,
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal:
                                                        size.width * 0.07),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Number of member required',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          color: Colors.grey),
                                                    ),
                                                    TextFormField(
                                                      controller: numberCre,
                                                      textAlign:
                                                          TextAlign.center,
                                                      decoration:
                                                          InputDecoration(
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    size.width *
                                                                        0.03),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300)),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    size.width *
                                                                        0.03),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300)),
                                                        // hintText: "Task Name",
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight:
                                                        //         FontWeight.w700,
                                                        //     color: Color(0xFF209FA6)
                                                        //         .withOpacity(0.4))
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: size.height * 0.01,
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal:
                                                      size.width * 0.07),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Task Description',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.grey),
                                                  ),
                                                  TextFormField(
                                                    controller: descriptionCre,
                                                    minLines: 3,
                                                    maxLines: null,
                                                    keyboardType:
                                                        TextInputType.multiline,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    textAlign: TextAlign.center,
                                                    decoration: InputDecoration(
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      size.width *
                                                                          0.03),
                                                          borderSide: BorderSide(
                                                              color: Colors.grey
                                                                  .shade300)),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      size.width *
                                                                          0.03),
                                                          borderSide: BorderSide(
                                                              color: Colors.grey
                                                                  .shade300)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.02,
                                            ),
                                            Container(
                                              height: size.height * 0.06,
                                              width: size.width * 0.8,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal:
                                                      size.width * 0.06),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  onAddButtonPress();
                                                },
                                                child: Text(
                                                  'Add Task',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 18,
                                                    color: Colors.white
                                                        .withOpacity(0.8),
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    primary: Color(0xFF209FA6),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    size.width *
                                                                        0.04))),
                                              ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .viewInsets
                                                  .bottom,
                                            )),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                'ADD NEW TASK',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF209FA6),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          size.width * 0.03))),
                            ),
                          ),
                          Container(
                            height: size.height * 0.055,
                            width: size.width * 0.11,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(size.width * 0.03),
                              color: Color(0xFF209FA6),
                            ),
                            child: Icon(
                              Icons.tune,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${_listTask.length} tasks',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      SizedBox(
                        height: size.height * 0.65,
                        width: size.width,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              height: size.height * 0.3,
                              margin:
                                  EdgeInsets.only(bottom: size.width * 0.04),
                              child: GestureDetector(
                                onTap: () {
                                  updateTask(context, index);
                                },
                                child: Slidable(
                                  actionPane: SlidableDrawerActionPane(),
                                  actionExtentRatio: 0.2,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.grey.shade300,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(
                                          size.width * 0.05),
                                    ),
                                    elevation: 1,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.03,
                                            vertical: size.width * 0.02),
                                        child: SizedBox(
                                          width: size.width,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                _listTask[index].name,
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Text(
                                                _listTask[index].description,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.date_range,
                                                    color: Colors.grey,
                                                    size: 28,
                                                  ),
                                                  SizedBox(
                                                    width: size.width * 0.01,
                                                  ),
                                                  Text(
                                                    _listTask[index].startDate +
                                                        ' - ' +
                                                        _listTask[index]
                                                            .endDate,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF209FA6)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Row(children: [
                                                Icon(
                                                  Icons.place,
                                                  color: Colors.grey,
                                                  size: 28,
                                                ),
                                                SizedBox(
                                                  width: size.width * 0.01,
                                                ),
                                                Text(
                                                  _listTask[index].location,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF209FA6)),
                                                ),
                                              ]),
                                              Text(
                                                'Undertaken by: ',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFF209FA6),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              ReadMoreText(
                                                _listTask[index].underTaken,
                                                trimLines: 1,
                                                textAlign: TextAlign.start,
                                                trimMode: TrimMode.Line,
                                                trimCollapsedText: "Read More",
                                                trimExpandedText: "Show Less",
                                                lessStyle: TextStyle(
                                                  color: Color(0xFF209FA6),
                                                ),
                                                moreStyle: TextStyle(
                                                  color: Color(0xFF209FA6),
                                                ),
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Container(
                                        //   alignment: Alignment.centerRight,
                                        //   width: size.width * 0.1,
                                        //   child: Column(
                                        //     children: [
                                        //       GestureDetector(
                                        //         onTap: () {
                                        //           setState(() {
                                        //             _listTask.remove(
                                        //                 _listTask[index]);
                                        //           });
                                        //         },
                                        //         child: CircleAvatar(
                                        //           backgroundColor: Colors.red,
                                        //           radius: size.width * 0.04,
                                        //           child: Icon(
                                        //             Icons.close,
                                        //             size: 27,
                                        //             color: Colors.white,
                                        //           ),
                                        //         ),
                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),
                                      ),
                                    ),
                                  ),
                                  secondaryActions: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(size.width * 0.06),
                                        bottomRight: Radius.circular(size.width * 0.04),
                                      ),
                                      child: IconSlideAction(
                                        caption: 'Delete',
                                        color: Colors.red,
                                        icon: Icons.delete_outline,
                                        onTap: () {
                                          setState(() {
                                            _listTask.remove(_listTask[index]);
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: _listTask.length,
                        ),
                      ),
                    ]),
              ),
            )));
  }

  onAddButtonPress() {
    Navigator.pop(context);
    _listTask.add(Task(
        name: nameCre.text,
        location: _dropDownValue!,
        startDate: startDateCre.text,
        endDate: endDateCre.text,
        numberMember: int.parse(numberCre.text),
        description: descriptionCre.text,
        status: true,
        underTaken: ''));
    nameCre.clear();
    startDateCre.clear();
    endDateCre.clear();
    numberCre.clear();
    descriptionCre.clear();
  }
}

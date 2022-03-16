// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:charity_app/models/task.dart';
import 'package:charity_app/models/task_taken.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ManageTaskPage extends StatefulWidget {
  const ManageTaskPage({Key? key}) : super(key: key);

  @override
  State<ManageTaskPage> createState() => _ManageTaskPageState();
}

class _ManageTaskPageState extends State<ManageTaskPage> {
  TextEditingController nameCre = TextEditingController();
  TextEditingController descriptionCre = TextEditingController();
  List<bool> _listEdit = [];
  List<TextEditingController> _listName = [];
  List<TextEditingController> _listDescription = [];
  List<String> _listTaskTaken = [];
  List<Task> _listTask = [
    Task(
        name: 'Distributing gifts to children',
        description:
            'Take out the gift and divide it equally among the children in the orphanage',
        underTaken: 'PhucNHB MinhBN AnNV HoangNT ANV ThamNT'),
    Task(
        name: 'Task 2',
        description: 'Going to help and teach the children in the ABC City',
        underTaken: 'PhucNHB MinhBN AnNV HoangNT ANV ThamNT'),
    Task(
        name: 'Task 3',
        description: 'Going to help and teach the children in the DEF City',
        underTaken: 'PhucNHB MinhBN AnNV HoangNT ANV ThamNT'),
  ];

  Future getListTaken(
      BuildContext context, double height, double width, int index) async {
    final result = await createDialog(context, height, width);
    setState(() {
      if (result == null) {
        return;
      } else {
        for (var i in result) {
          setState(() {
            _listTask[index].underTaken += ' ' + i;
          });
        }
        _listTaskTaken.clear();
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
                                                  horizontal: size.width * 0.1),
                                              child: TextFormField(
                                                controller: nameCre,
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(
                                                            20),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey
                                                                .shade300)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                20),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey
                                                                .shade300)),
                                                    hintText: "Task Name",
                                                    hintStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Color(0xFF209FA6)
                                                            .withOpacity(0.4))),
                                              )),
                                          SizedBox(
                                            height: size.height * 0.02,
                                          ),
                                          Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: size.width * 0.1),
                                              child: TextFormField(
                                                controller: descriptionCre,
                                                minLines: 2,
                                                maxLines: null,
                                                keyboardType:
                                                    TextInputType.multiline,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(
                                                            20),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey.shade300)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                20),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey
                                                                .shade300)),
                                                    hintText:
                                                        "Task Description",
                                                    hintStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Color(0xFF209FA6)
                                                            .withOpacity(0.4))),
                                              )),
                                          SizedBox(
                                            height: size.height * 0.02,
                                          ),
                                          Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.8,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: size.width * 0.06),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                _listTask.add(Task(
                                                    name: nameCre.text,
                                                    description:
                                                        descriptionCre.text,
                                                    underTaken: ''));
                                              },
                                              child: Text(
                                                'Create Task',
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
                                                          BorderRadius.circular(
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
                            _listEdit.add(false);
                            _listName.add(TextEditingController());
                            _listDescription.add(TextEditingController());
                            return Container(
                              height: size.height * 0.3,
                              margin:
                                  EdgeInsets.only(bottom: size.width * 0.04),
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
                                    side: BorderSide(
                                        color: Colors.grey.shade300, width: 1),
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.05),
                                  ),
                                  elevation: 1,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.03,
                                        vertical: size.width * 0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          width: size.width * 0.7,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _listEdit[index] == true
                                                  ? TextFormField(
                                                      style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      autofocus: true,
                                                      controller: _listName[
                                                              index] =
                                                          TextEditingController()
                                                            ..text =
                                                                _listTask[index]
                                                                    .name,
                                                      // TextEditingController(
                                                      //     text: _listTask[
                                                      //             index]
                                                      //         .name),
                                                      readOnly: false,
                                                      decoration: InputDecoration(
                                                          isDense: true,
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          0)),
                                                    )
                                                  : Text(
                                                      _listTask[index].name,
                                                      style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              _listEdit[index] == true
                                                  ? TextFormField(
                                                      minLines: 2,
                                                      maxLines: null,
                                                      keyboardType:
                                                          TextInputType
                                                              .multiline,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      autofocus: true,
                                                      controller: _listDescription[
                                                              index] =
                                                          TextEditingController()
                                                            ..text = _listTask[
                                                                    index]
                                                                .description,
                                                      readOnly: false,
                                                      decoration: InputDecoration(
                                                          isDense: true,
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          0)),
                                                    )
                                                  : Text(
                                                      _listTask[index]
                                                          .description,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.grey),
                                                    ),
                                              SizedBox(
                                                height: size.height * 0.03,
                                              ),
                                              Text(
                                                'Assign by: ',
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
                                        SizedBox(
                                          width: size.width * 0.02,
                                        ),
                                        Container(
                                          alignment: Alignment.centerRight,
                                          width: size.width * 0.1,
                                          child: Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _listTask.remove(
                                                        _listTask[index]);
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.red,
                                                  radius: size.width * 0.04,
                                                  child: Icon(
                                                    Icons.close,
                                                    size: 27,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.04,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    if (_listName[index]
                                                            .text
                                                            .isNotEmpty ||
                                                        _listDescription[index]
                                                            .text
                                                            .isNotEmpty) {
                                                      _listTask[index].name =
                                                          _listName[index].text;
                                                      _listTask[index]
                                                              .description =
                                                          _listDescription[
                                                                  index]
                                                              .text;
                                                    }
                                                    _listEdit[index] =
                                                        !_listEdit[index];
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Color(0xFF209FA6),
                                                  radius: size.width * 0.04,
                                                  child: Icon(
                                                    Icons.edit_rounded,
                                                    size: 27,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  getListTaken(
                                                      context,
                                                      size.height * 0.28,
                                                      size.width * 0.4,
                                                      index);
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Color(0xFF209FA6),
                                                  radius: size.width * 0.04,
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 32,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Text(
                                        //   '${listCharity[index].title}',
                                        //   style: TextStyle(
                                        //     fontSize: 22,
                                        //     fontFamily: 'Fredoka',
                                        //     color: Color(0xFF1B2441),
                                        //     fontWeight: FontWeight.bold,
                                        //   ),
                                        // ),
                                        // SizedBox(
                                        //   height: size.height * 0.01,
                                        // ),
                                        // Text(
                                        //   'By ${listCharity[index].organization}',
                                        //   style: TextStyle(
                                        //     fontSize: 16,
                                        //     fontFamily: 'Fredoka',
                                        //     color: Color(0xFF209FA6)
                                        //         .withOpacity(0.7),
                                        //   ),
                                        // ),
                                        // SizedBox(
                                        //   height: size.height * 0.03,
                                        // ),
                                        // Row(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment
                                        //             .spaceBetween,
                                        //     children: [
                                        // Text(
                                        //   '\$${listCharity[index].raisedMoney} Raised',
                                        //   style: TextStyle(
                                        //     fontSize: 20,
                                        //     fontFamily: 'Fredoka',
                                        //     fontWeight: FontWeight.bold,
                                        //     color: Color(0xFF209FA6),
                                        //   ),
                                        // ),
                                        // Text(
                                        //   'Total Amount - \$' +
                                        //       format.format(listCharity[index]
                                        //           .targetMoney),
                                        //   style: TextStyle(
                                        //     fontSize: 20,
                                        //     fontFamily: 'Fredoka',
                                        //     fontWeight: FontWeight.bold,
                                        //     color: Color(0xFF209FA6),
                                        //   ),
                                        // ),
                                        // ]),
                                      ],
                                    ),
                                  ),
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

  createDialog(BuildContext context, double height, double width) {
    List<TaskTaken> _listPeople = [
      TaskTaken('Katherine Yost', false),
      TaskTaken('Taya Kuhlman', false),
      TaskTaken('Dave White', false),
      TaskTaken('Tyrel Wiza', false),
    ];
    return showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: Text('Add people to task!'),
              content: SizedBox(
                height: height,
                width: width,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.8,
                      width: width,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(_listPeople[index].title),
                              Checkbox(
                                  value: _listPeople[index].value,
                                  onChanged: (value) {
                                    setState(() {
                                      _listPeople[index].value = value!;
                                      if (_listPeople[index].value) {
                                        _listTaskTaken
                                            .add(_listPeople[index].title);
                                      } else {
                                        _listTaskTaken
                                            .remove(_listPeople[index].title);
                                      }
                                    });
                                  })
                            ],
                          );
                        },
                        itemCount: _listPeople.length,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, _listTaskTaken);
                      },
                      child: Text('Save'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF209FA6),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }
}

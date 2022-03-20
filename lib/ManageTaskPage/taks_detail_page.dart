// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:charity_app/models/task.dart';
import 'package:charity_app/models/task_taken.dart';
import 'package:flutter/material.dart';

class DetailTaskPage extends StatefulWidget {
  final Task task;
  const DetailTaskPage({Key? key, required this.task}) : super(key: key);

  @override
  State<DetailTaskPage> createState() => _DetailTaskPageState();
}

class _DetailTaskPageState extends State<DetailTaskPage> {
  TextEditingController nameCre = TextEditingController();
  TextEditingController descriptionCre = TextEditingController();
  TextEditingController startDateCre = TextEditingController();
  TextEditingController endDateCre = TextEditingController();
  TextEditingController numberCre = TextEditingController();
  List<String> _listTaskTaken = [];
  bool? checkStatus;

  Future assignNewMemeber(
      BuildContext context, double height, double width) async {
    final result = await createDialog(context, height, width);
    setState(() {
      if (result == null) {
        return;
      } else {
        for (var i in result) {
          setState(() {
            widget.task.underTaken += i + ', ';
          });
        }
        _listTaskTaken.clear();
      }
    });
  }

  @override
  void initState() {
    checkStatus = widget.task.status;
    nameCre.text = widget.task.name;
    startDateCre.text = widget.task.startDate;
    endDateCre.text = widget.task.endDate;
    descriptionCre.text = widget.task.description;
    numberCre.text = widget.task.numberMember.toString();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nameCre.dispose();
    startDateCre.dispose();
    endDateCre.dispose();
    descriptionCre.dispose();
    numberCre.dispose();
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
              height: size.height * 0.9,
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
                        'Edit Task',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B2441),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Task Name',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: nameCre,
                      style: TextStyle(
                        color: Color(0xFF209FA6),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: size.width * 0.01,
                            horizontal: size.width * 0.01),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    // Text(
                    //   'Date',
                    //   style: TextStyle(fontSize: 17, color: Colors.grey),
                    // ),
                    // TextFormField(
                    //   // controller: date,
                    //   style: TextStyle(
                    //     color: Color(0xFF209FA6),
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 18,
                    //   ),
                    //   decoration: InputDecoration(
                    //     enabledBorder: UnderlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.grey.shade300,
                    //       ),
                    //     ),
                    //     isDense: true,
                    //     hintText: 'Ex: 10000',
                    //     hintStyle: TextStyle(
                    //       fontSize: 18,
                    //       color: Colors.grey,
                    //     ),
                    //     contentPadding:
                    //         EdgeInsets.symmetric(vertical: size.width * 0.03),
                    //     prefixIconConstraints:
                    //         BoxConstraints(maxHeight: size.height * 0.03),
                    //     prefixIcon: Padding(
                    //       padding: EdgeInsets.only(right: size.width * 0.04),
                    //       child: Icon(
                    //         Icons.money_outlined,
                    //         size: 25,
                    //         color: Colors.grey,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Start Date',
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                              SizedBox(
                                width: size.width * 0.45,
                                child: TextFormField(
                                  controller: startDateCre,
                                  style: TextStyle(
                                    color: Color(0xFF209FA6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: size.width * 0.01,
                                        horizontal: size.width * 0.01),
                                  ),
                                ),
                              ),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'End Date',
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                              SizedBox(
                                width: size.width * 0.45,
                                child: TextFormField(
                                  controller: endDateCre,
                                  style: TextStyle(
                                    color: Color(0xFF209FA6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: size.width * 0.01,
                                        horizontal: size.width * 0.01),
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Task Location',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.width * 0.01),
                      height: size.height * 0.06,
                      width: size.width,
                      // decoration: BoxDecoration(
                      //     border:
                      //         Border.all(color: Colors.grey.shade400, width: 1),
                      //     borderRadius:
                      //         BorderRadius.circular(size.width * 0.02)),
                      child: DropdownButton<String>(
                        // underline: SizedBox(),
                        elevation: 1,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 35,
                        isExpanded: true,
                        style: TextStyle(
                          color: Color(0xFF209FA6),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        value: widget.task.location,
                        onChanged: (newValue) {
                          setState(() {
                            widget.task.location = newValue!;
                          });
                        },
                        items: ['District 1', 'District 2', 'District 3']
                            .map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Number of Member',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: numberCre,
                      style: TextStyle(
                        color: Color(0xFF209FA6),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: 100',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: size.width * 0.01,
                            horizontal: size.width * 0.01),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Task Description',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: descriptionCre,
                      minLines: 3,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.done,
                      style: TextStyle(
                        color: Color(0xFF209FA6),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: size.width * 0.01,
                            horizontal: size.width * 0.01),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Task Undertaken By',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    GestureDetector(
                        onTap: () {
                          assignNewMemeber(context, size.height, size.width);
                        },
                        child: widget.task.underTaken == ''
                            ? Container(
                                height: size.height * 0.06,
                                width: size.width * 0.12,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              )
                            : SizedBox(
                                width: size.width,
                                child: Text(
                                  widget.task.underTaken,
                                  style: TextStyle(
                                    color: Color(0xFF209FA6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ))),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Status',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'In Progress',
                              style: TextStyle(
                                color: Color(0xFF209FA6),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Checkbox(
                                value: checkStatus,
                                onChanged: (value) {
                                  setState(() {
                                    checkStatus = value!;
                                  });
                                })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Done',
                                style: TextStyle(
                                  color: Color(0xFF209FA6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                            Checkbox(
                                value: !checkStatus!,
                                onChanged: (value) {
                                  setState(() {
                                    checkStatus = !value!;
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(top: size.width * 0.01),
                    //   height: size.height * 0.06,
                    //   width: size.width * 0.45,
                    //   decoration: BoxDecoration(
                    //       border:
                    //           Border.all(color: Colors.grey.shade400, width: 1),
                    //       borderRadius:
                    //           BorderRadius.circular(size.width * 0.02)),
                    //   child: Padding(
                    //     padding:
                    //         EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    //     child: DropdownButton<String>(
                    //       underline: SizedBox(),
                    //       elevation: 1,
                    //       icon: Icon(Icons.arrow_drop_down),
                    //       iconSize: 35,
                    //       isExpanded: true,
                    //       style: TextStyle(
                    //         color: Color(0xFF209FA6),
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 18,
                    //       ),
                    //       value: widget.task.status,
                    //       onChanged: (newValue) {
                    //         setState(() {
                    //           widget.task.status = newValue!;
                    //         });
                    //       },
                    //       items: ['In Progress', 'Done'].map((valueItem) {
                    //         return DropdownMenuItem(
                    //           value: valueItem,
                    //           child: Text(valueItem),
                    //         );
                    //       }).toList(),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: ElevatedButton(
                        onPressed: () {
                          widget.task.name = nameCre.text;
                          widget.task.startDate = startDateCre.text;
                          widget.task.endDate = endDateCre.text;
                          widget.task.numberMember = int.parse(numberCre.text);
                          widget.task.description = descriptionCre.text;
                          widget.task.status = checkStatus!;
                          Navigator.pop(context, widget.task);
                        },
                        child: Text(
                          ' Save',
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
            ))));
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
                height: height * 0.3,
                width: width * 0.4,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.2,
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
                    SizedBox(
                      height: height * 0.02,
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

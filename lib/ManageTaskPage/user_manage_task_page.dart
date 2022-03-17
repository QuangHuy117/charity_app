// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:charity_app/models/task.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ManageUserTaskPage extends StatefulWidget {
  const ManageUserTaskPage({Key? key}) : super(key: key);

  @override
  State<ManageUserTaskPage> createState() => _ManageUserTaskPageState();
}

class _ManageUserTaskPageState extends State<ManageUserTaskPage> {
  List<Task> _listTask = [
    Task(
        name: 'Distributing gifts to children',
        description:
            'Take out the gift and divide it equally among the children in the orphanage',
        underTaken: 'Dan Hermann'),
    Task(
        name: 'Task 2',
        description: 'Going to help and teach the children in the ABC City',
        underTaken: 'Lolita Brown'),
    Task(
        name: 'Task 3',
        description: 'Going to help and teach the children in the DEF City',
        underTaken: 'Neil Nicolas'),
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
              child: SizedBox(
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
                      Container(
                        alignment: Alignment.centerRight,
                        child: Container(
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
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      width: size.width * 0.7,
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
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
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
  // showModalBottomSheet(
  //                                 context: context,
  //                                 isScrollControlled: true,
  //                                 backgroundColor: Colors.white,
  //                                 shape: RoundedRectangleBorder(
  //                                     borderRadius: BorderRadius.only(
  //                                         topLeft:
  //                                             Radius.circular(size.width * 0.1),
  //                                         topRight: Radius.circular(
  //                                             size.width * 0.1))),
  //                                 builder: (context) {
  //                                   return Padding(
  //                                     padding: EdgeInsets.symmetric(
  //                                         vertical: size.width * 0.05),
  //                                     child: Column(
  //                                       crossAxisAlignment:
  //                                           CrossAxisAlignment.center,
  //                                       mainAxisSize: MainAxisSize.min,
  //                                       children: [
  //                                         Text(
  //                                           'Create new task',
  //                                           style: TextStyle(
  //                                             fontSize: 20,
  //                                             color: Color(0xFF1B2441),
  //                                             fontWeight: FontWeight.bold,
  //                                           ),
  //                                         ),
  //                                         SizedBox(
  //                                           height: size.height * 0.02,
  //                                         ),
  //                                         Container(
  //                                             margin: EdgeInsets.symmetric(
  //                                                 horizontal: size.width * 0.1),
  //                                             child: TextFormField(
  //                                               controller: nameCre,
  //                                               textAlign: TextAlign.center,
  //                                               decoration: InputDecoration(
  //                                                   enabledBorder: OutlineInputBorder(
  //                                                       borderRadius: BorderRadius.circular(
  //                                                           20),
  //                                                       borderSide: BorderSide(
  //                                                           color: Colors.grey
  //                                                               .shade300)),
  //                                                   focusedBorder: OutlineInputBorder(
  //                                                       borderRadius:
  //                                                           BorderRadius.circular(
  //                                                               20),
  //                                                       borderSide: BorderSide(
  //                                                           color: Colors.grey
  //                                                               .shade300)),
  //                                                   hintText: "Task Name",
  //                                                   hintStyle: TextStyle(
  //                                                       fontWeight:
  //                                                           FontWeight.w700,
  //                                                       color: Color(0xFF209FA6)
  //                                                           .withOpacity(0.4))),
  //                                             )),
  //                                         SizedBox(
  //                                           height: size.height * 0.02,
  //                                         ),
  //                                         Container(
  //                                             margin: EdgeInsets.symmetric(
  //                                                 horizontal: size.width * 0.1),
  //                                             child: TextFormField(
  //                                               controller: descriptionCre,
  //                                               minLines: 2,
  //                                               maxLines: null,
  //                                               keyboardType:
  //                                                   TextInputType.multiline,
  //                                               textInputAction:
  //                                                   TextInputAction.done,
  //                                               textAlign: TextAlign.center,
  //                                               decoration: InputDecoration(
  //                                                   enabledBorder: OutlineInputBorder(
  //                                                       borderRadius: BorderRadius.circular(
  //                                                           20),
  //                                                       borderSide: BorderSide(
  //                                                           color: Colors
  //                                                               .grey.shade300)),
  //                                                   focusedBorder: OutlineInputBorder(
  //                                                       borderRadius:
  //                                                           BorderRadius.circular(
  //                                                               20),
  //                                                       borderSide: BorderSide(
  //                                                           color: Colors.grey
  //                                                               .shade300)),
  //                                                   hintText:
  //                                                       "Task Description",
  //                                                   hintStyle: TextStyle(
  //                                                       fontWeight:
  //                                                           FontWeight.w700,
  //                                                       color: Color(0xFF209FA6)
  //                                                           .withOpacity(0.4))),
  //                                             )),
  //                                         SizedBox(
  //                                           height: size.height * 0.02,
  //                                         ),
  //                                         Container(
  //                                           height: size.height * 0.06,
  //                                           width: size.width * 0.8,
  //                                           margin: EdgeInsets.symmetric(
  //                                               horizontal: size.width * 0.06),
  //                                           child: ElevatedButton(
  //                                             onPressed: () {
  //                                               Navigator.pop(context);
  //                                               _listTask.add(Task(
  //                                                   name: nameCre.text,
  //                                                   description:
  //                                                       descriptionCre.text,
  //                                                   underTaken: ''));
  //                                             },
  //                                             child: Text(
  //                                               'Create Task',
  //                                               style: TextStyle(
  //                                                 fontWeight: FontWeight.w700,
  //                                                 fontSize: 18,
  //                                                 color: Colors.white
  //                                                     .withOpacity(0.8),
  //                                               ),
  //                                             ),
  //                                             style: ElevatedButton.styleFrom(
  //                                                 primary: Color(0xFF209FA6),
  //                                                 shape: RoundedRectangleBorder(
  //                                                     borderRadius:
  //                                                         BorderRadius.circular(
  //                                                             size.width *
  //                                                                 0.04))),
  //                                           ),
  //                                         ),
  //                                         Padding(
  //                                             padding: EdgeInsets.only(
  //                                           bottom: MediaQuery.of(context)
  //                                               .viewInsets
  //                                               .bottom,
  //                                         )),
  //                                       ],
  //                                     ),
  //                                   );
  //                                 },
  //                               );
}

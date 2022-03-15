// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'dart:io';

// import 'package:charity_app/HomePage/home_page.dart';
import 'package:charity_app/models/charity.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateNewFundPage extends StatefulWidget {
  const CreateNewFundPage({Key? key}) : super(key: key);

  @override
  State<CreateNewFundPage> createState() => _CreateNewFundPageState();
}

class _CreateNewFundPageState extends State<CreateNewFundPage> {
  TextEditingController title = TextEditingController();
  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  TextEditingController organization = TextEditingController();
  TextEditingController money = TextEditingController();
  TextEditingController description = TextEditingController();

  Charity? charity;
  var format = DateFormat('dd/MM/yyyy');
  List<Widget> listWidget = [];
  String? _dropDownValue;
  File? image;
  File? imageLogo;
  String? imageString;
  String? imageLogoString;

  Future selectFile(int num) async {
    if (num == 1) {
      final result = await FilePicker.platform.pickFiles();

      if (result == null) return;
      final path = result.files.single.path;
      imageString = path!.split('/').last;

      setState(() => image = File(path));
      if (image == null) return;
    } else {
      final result = await FilePicker.platform.pickFiles();

      if (result == null) return;
      final path = result.files.single.path;
      imageLogoString = path!.split('/').last;

      setState(() => imageLogo = File(path));
      if (imageLogo == null) return;
    }
  }

  @override
  void initState() {
    startDate.text = format.format(DateTime.now());
    endDate.text = format.format(DateTime.now().add(Duration(days: 1)));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    startDate.dispose();
    endDate.dispose();
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
                height: size.height * 0.025,
              ),
              Text(
                'Create Campaign',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B2441),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),
                      child: GestureDetector(
                        onTap: () {
                          selectFile(1);
                        },
                        child: image == null
                            ? Container(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.add,
                                  size: 50,
                                ),
                              )
                            : ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(size.width * 0.07),
                                child: Image(
                                  image: FileImage(image!),
                                  fit: BoxFit.cover,
                                  height: size.height * 0.18,
                                  width: size.width,
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SizedBox(
                        height: size.height * 0.07,
                        child: TextFormField(
                          controller: title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF209FA6),
                            fontWeight: FontWeight.bold,
                          ),
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
                              hintText: "Campaign Name",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF209FA6).withOpacity(0.4))),
                        )),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: size.height * 0.07,
                          width: size.width * 0.45,
                          child: TextFormField(
                            controller: startDate,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF209FA6),
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.04),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade300)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.04),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade300)),
                                hintText: "Start Date",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF209FA6).withOpacity(0.4))),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                          width: size.width * 0.45,
                          child: TextFormField(
                            controller: endDate,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF209FA6),
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.04),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade300)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.04),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade300)),
                                hintText: "End Date",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF209FA6).withOpacity(0.4))),
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
                        Container(
                          height: size.height * 0.06,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400, width: 1),
                              borderRadius:
                                  BorderRadius.circular(size.width * 0.04)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02),
                            child: DropdownButton<String>(
                              underline: SizedBox(),
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 35,
                              hint: Text('Choose topic'),
                              isExpanded: true,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              value: _dropDownValue,
                              onChanged: (newValue) {
                                setState(() {
                                  _dropDownValue = newValue;
                                });
                              },
                              items: ['Medical', 'Education', 'Pandemic']
                                  .map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                          width: size.width * 0.45,
                          child: TextFormField(
                            controller: organization,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF209FA6),
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.04),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade300)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        size.width * 0.04),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade300)),
                                hintText: "Organization",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF209FA6).withOpacity(0.4))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SizedBox(
                        height: size.height * 0.07,
                        child: TextFormField(
                          controller: money,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF209FA6),
                            fontWeight: FontWeight.bold,
                          ),
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
                              hintText: "Money Raised",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF209FA6).withOpacity(0.4))),
                        )),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SizedBox(
                      height: size.height * 0.18,
                      width: size.width,
                      child: TextFormField(
                        controller: description,
                        minLines: 6,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF209FA6),
                          fontWeight: FontWeight.bold,
                        ),
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
                            hintText: "Description",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF209FA6).withOpacity(0.4))),
                      ),
                    ),
                    // Text(
                    //   'List volunteer',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.bold,
                    //     color: Color(0xFF209FA6),
                    //   ),
                    // ),
                    // Divider(
                    //   color: Colors.grey,
                    //   endIndent: size.width * 0.6,
                    //   thickness: 1,
                    // ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    GestureDetector(
                        onTap: () {
                          selectFile(2);
                        },
                        child: imageLogoString == null
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
                            : Text(imageLogoString ?? '')),
                    // SizedBox(
                    //   height: size.height * 0.01,
                    // ),
                    // Text(
                    //   'Place',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.bold,
                    //     color: Color(0xFF209FA6),
                    //   ),
                    // ),
                    // Divider(
                    //   color: Colors.grey,
                    //   endIndent: size.width * 0.6,
                    //   thickness: 1,
                    // ),
                    // Column(
                    //   children: [

                    //   ],
                    // ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage()));
                          charity = Charity(
                            title: title.text, 
                            topic: _dropDownValue!, 
                            organization: organization.text, 
                            description: description.text, 
                            image: 'assets/images/' + imageString!, 
                            image2: 'assets/images/africa1.jpg', 
                            imageLogo: 'assets/images/' + imageLogoString!, 
                            startDate: startDate.text, 
                            endDate: endDate.text, 
                            status: 'In Progress', 
                            peopleJoin: 0, 
                            targetMoney: int.parse(money.text)
                            );
                          Navigator.pop(context, charity);
                        },
                        child: Text(
                          ' Publish Now',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

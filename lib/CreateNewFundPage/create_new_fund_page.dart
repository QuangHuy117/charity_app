// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'dart:io';

import 'package:charity_app/HomePage/home_page.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CreateNewFundPage extends StatefulWidget {
  const CreateNewFundPage({Key? key}) : super(key: key);

  @override
  State<CreateNewFundPage> createState() => _CreateNewFundPageState();
}

class _CreateNewFundPageState extends State<CreateNewFundPage> {
  File? file;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) return;
    final path = result.files.single.path;

    setState(() => file = File(path!));
    if (file == null) return;
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
                'Create Fund',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B2441),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
                child: GestureDetector(
                  onTap: () {
                    selectFile();
                  },
                  child: file == null
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
                            image: AssetImage('assets/images/africa.jpg'),
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
              Container(
                  margin: EdgeInsets.only(bottom: size.width * 0.05),
                  child: TextFormField(
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
                        hintText: "Fund Name",
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
                    height: size.height * 0.1,
                    width: size.width * 0.45,
                    child: TextFormField(
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
                          hintText: "Target Amount",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF209FA6).withOpacity(0.4))),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                    width: size.width * 0.45,
                    child: TextFormField(
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
              SizedBox(
                height: size.height * 0.2,
                width: size.width,
                child: TextFormField(
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
                          borderSide: BorderSide(color: Colors.grey.shade300)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.width * 0.04),
                          borderSide: BorderSide(color: Colors.grey.shade300)),
                      hintText: "Description",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF209FA6).withOpacity(0.4))),
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => HomePage()));
                    Navigator.pop(context);
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
      ),
    );
  }
}

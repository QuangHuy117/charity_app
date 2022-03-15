// ignore_for_file: prefer_const_constructors

import 'package:charity_app/icons/my_flutter_app_icons.dart';
import 'package:charity_app/models/recipient.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateRecipientPage extends StatefulWidget {
  const CreateRecipientPage({Key? key}) : super(key: key);

  @override
  State<CreateRecipientPage> createState() => _CreateRecipientPageState();
}

class _CreateRecipientPageState extends State<CreateRecipientPage> {
  Recipient? recipient;
  var format = DateFormat('d '+'MMM '+'y');
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController idCard = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController money = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController joined = TextEditingController();
  @override
  void initState() {
    joined.text = format.format(DateTime.now());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    joined.dispose();
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
                        'Create Recipient',
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
                      'Full Name',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: name,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: abcdef',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.account_circle_outlined,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: address,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: 1234 acbs',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.home_outlined,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Gender',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: gender,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: Male',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            MyFlutterApp.vcard,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Identity Card',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: idCard,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: 00000000000',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            MyFlutterApp.vcard,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: phone,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: 000-000-0000',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.phone_outlined,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Money',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: money,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: 10000',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.money_outlined,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Birth Date',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.2,
                          child: TextFormField(
                            controller: date,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Ex: 22',
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.4,
                          child: TextFormField(
                            controller: month,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Ex: September',
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                          child: TextFormField(
                            controller: year,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Ex: 2000',
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    Container(
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: ElevatedButton(
                        onPressed: () {
                          recipient = Recipient(
                            name.text, 
                            address.text, 
                            gender.text, 
                            idCard.text, 
                            phone.text, 
                            int.parse(money.text), 
                            int.parse(date.text), 
                            month.text, 
                            int.parse(year.text), 
                            joined.text);
                          Navigator.pop(context, recipient);
                        },
                        child: Text(
                          ' Create',
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
}

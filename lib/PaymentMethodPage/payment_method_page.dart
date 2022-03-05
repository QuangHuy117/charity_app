// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:charity_app/models/payment.dart';
import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  final int num;
  const PaymentMethodPage({Key? key, required this.num}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    Payment? payment;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            minimum: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.05,
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
                    height: size.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.num == 1) {
                        setState(() {
                          payment = Payment(
                              name: 'MasterCard',
                              image: 'assets/images/Mastercard_logo.png',
                              stk: '159-107-1396',
                              date: 'Ex-4/22');
                        });
                        Navigator.pop(context, payment);
                      }
                    },
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.03),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.shade300, width: 1),
                          borderRadius:
                              BorderRadius.circular(size.width * 0.06)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'MasterCard Payment',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.edit,
                                size: 15,
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/Mastercard_logo.png'),
                                    fit: BoxFit.contain,
                                    height: size.height * 0.03,
                                    width: size.width * 0.12,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Text(
                                    '159-107-1396',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF1B2441),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Ex-4/22',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '123',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.num == 1) {
                        setState(() {
                          payment = Payment(
                              name: 'PayPal',
                              image: 'assets/images/Paypal_logo.png',
                              stk: '123-456-789',
                              date: 'Ex-3/05');
                        });
                        Navigator.pop(context, payment);
                      }
                    },
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.03),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.shade300, width: 1),
                          borderRadius:
                              BorderRadius.circular(size.width * 0.06)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'PayPal Payment',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.edit,
                                size: 15,
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/Paypal_logo.png'),
                                    fit: BoxFit.cover,
                                    height: size.height * 0.03,
                                    width: size.width * 0.12,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Text(
                                    '123-456-789',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF1B2441),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Ex-3/05',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '123',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.num == 1) {
                        setState(() {
                          payment = Payment(
                              name: 'Visa',
                              image: 'assets/images/Visa_logo.png',
                              stk: '113-147-1096',
                              date: 'Ex-5/15');
                        });
                        Navigator.pop(context, payment);
                      }
                    },
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.03),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.shade300, width: 1),
                          borderRadius:
                              BorderRadius.circular(size.width * 0.06)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Visa Payment',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.edit,
                                size: 15,
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/Visa_logo.png'),
                                    fit: BoxFit.cover,
                                    height: size.height * 0.03,
                                    width: size.width * 0.12,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Text(
                                    '113-147-1096',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF1B2441),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Ex-5/15',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '123',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width,
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.03),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(size.width * 0.06)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add another payment method',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF1B2441),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, unnecessary_string_interpolations

import 'package:charity_app/PaymentMethodPage/payment_method_page.dart';
import 'package:charity_app/models/payment.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  final String money;
  const PaymentPage({Key? key, required this.money}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  Payment payment = new Payment(
    name: 'MasterCard',
    image: 'assets/images/Mastercard_logo.png',
    stk: '159-107-1396',
    date: 'Ex-4/22',
  );

  Future getPaymentMethod(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentMethodPage(num: 1,)),
    );
    setState(() {
      if (result == null) {
        return;
      } else {
        setState(() {
          payment = result;
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
                onTap: () {},
                child: Container(
                  height: size.height * 0.15,
                  width: size.width,
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.03),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                      borderRadius: BorderRadius.circular(size.width * 0.06)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${payment.name} Payment',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF1B2441),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => getPaymentMethod(context),
                            child: Icon(
                              Icons.edit,
                              size: 15,
                            ),
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
                                    '${payment.image}'),
                                fit: BoxFit.contain,
                                height: size.height * 0.03,
                                width: size.width * 0.12,
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text(
                                '${payment.stk}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B2441),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '${payment.date}',
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
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ammount',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B2441).withOpacity(0.3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$' + (widget.money) + '.00',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B2441),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Divider(
                color: Color(0xFF1B2441).withOpacity(0.1),
                thickness: 1,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B2441).withOpacity(0.3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${payment.name}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B2441),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Divider(
                color: Color(0xFF1B2441).withOpacity(0.1),
                thickness: 1,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ID',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B2441).withOpacity(0.3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '879632',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B2441),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Divider(
                color: Color(0xFF1B2441).withOpacity(0.1),
                thickness: 1,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Pay Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white.withOpacity(0.9),
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

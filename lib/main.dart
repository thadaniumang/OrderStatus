import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'product-tile.dart';

void main() => runApp(MaterialApp(
  home: Order_Status()
));

class Order_Status extends StatefulWidget {
  @override
  _Order_StatusState createState() => _Order_StatusState();
}

class _Order_StatusState extends State<Order_Status> {
  String startDate = '13th April 2020, A Monday';
  String endDate = '17th April 2020, A Friday';
  String prId = 'WOB6987134V9';
  String orId = 'DIB8C25';
  String address = 'India, Asia, Earth';
  num amt = 300;
  List<Product> product = <Product>[
    Product(header: 'Hand Towels', body: 'Well Sanitized Hand Towels', isFlipped: false, quantity: '5'),
    Product(header: 'Face Masks', body: 'Well Sanitized Face Masks', isFlipped: false, quantity: '3'),
    Product(header: 'Hand Gloves', body: 'Well Sanitized Hand Gloves', isFlipped: false, quantity: '1'),
  ];
  List<String> weekDays = [
    'Wednesday',
    'Thursday',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limonefresco Rentals',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text('Order Status',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
              Divider(
                  height: 50.0,
                  color: Colors.grey[800],
                  thickness: 1.00
              ),
              Text('Plan Starts on:'),
              SizedBox(height: 10.0),
              Text(
                '$startDate',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),
              ),
              SizedBox(height: 20.0),
              Text('Plan Ends on:'),
              SizedBox(height: 10.0),
              Text(
                '$endDate',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),
              ),
              SizedBox(height: 20.0),
              Text('Weekly Active Days:'),
              SizedBox(height: 5.0),
              Row(
                children: weekDays.map((weekDay) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Chip(
                        label: Text(weekDay,
                        style: TextStyle(
                            color: Colors.black87
                          ),
                        ),
                        backgroundColor: Colors.grey[350],
                      ),
                      SizedBox(width: 5.0)
                    ],
                  );
                }).toList()
              ),
              SizedBox(height: 12.5),
              Text('Payment Reference Id:'),
              SizedBox(height: 10.0),
              Text(
                '$prId',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),
              ),
              SizedBox(height: 20.0),
              Text('Order Reference Id:'),
              SizedBox(height: 10.0),
              Text(
                '$prId',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),
              ),
              SizedBox(height: 20.0),
              Text('Address:'),
              SizedBox(height: 10.0),
              Text(
                '$address',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),
              ),
              SizedBox(height: 20.0),
              Text('Amount Paid:'),
              SizedBox(height: 10.0),
              Text(
                'Rs. $amt',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),
              ),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                    children:[
                      TextSpan(
                        text: 'Product Details: ',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                      TextSpan(
                        text: 'Tap product for more details',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    ]
                  ),
                ),
              SizedBox(height: 10.0),
              Column(
                children: product.map((product) {
                  return Column(
                    children: <Widget>[
                      Card(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              product.isFlipped = !product.isFlipped;
                            });
                          },
                          child: product.isFlipped == false ?
                          Container(
                              width: 300.0,
                              height: 70.0,
                              child: Center(child: Text(product.header))
                          ):
                          Container(
                            width: 300.0,
                            height: 70.0,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Description  ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(product.body),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Quantity:  ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(product.quantity),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList()
              ),
              SizedBox(height: 40.0),
              Center(
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: 50.0,
                    minWidth: 100.0
                  ),
                  color: Colors.lightGreen[100],
                  child: Center(
                    child: Text(
                      'Thank You for choosing Sanitized Products',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0)
            ],
          ),
        ),
      ),
    );
  }
}

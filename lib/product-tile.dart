import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  bool isFlipped;
  String header;
  String body;
  String quantity;
  Product({this.isFlipped: false, this.header, this.body, this.quantity});
}
import 'package:flutter/material.dart';

class Details{
  final String number,title;
  Details({ required this.number ,required this.title  });
}
List<Details> myaccountDetails = [
  Details(
    number: "56",
    title: "pictures",
  ),
   Details(
    number: "2k",
    title: "followers",
  ),
   Details(
    number: "112",
    title: "following",
  )
];
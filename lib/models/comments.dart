import 'package:flutter/material.dart';
class Comment{
  final String image , comment;
  Comment({required this.image , required this.comment});
}
List<Comment> comments = [
Comment(
  image:"assets/images/gallery_1.jpg",
  comment:"Beautiful at work !!!",
),
Comment(
  image:"assets/images/review_2.jpg",
  comment:"I think this photo is low quality ...",
)
];
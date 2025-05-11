
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminPostModel{

  //String id;
  String adminTitle;
  String adminPostDescription;
  String timestamp;
  bool isLiked;

  AdminPostModel({
    required this.adminTitle,
    required this.adminPostDescription,
    required this.timestamp,
    required this.isLiked,
  });
}
// To parse this JSON data, do
//
//     final studentModel = studentModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

StudentModel studentModelFromJson(String str) => StudentModel.fromJson(json.decode(str));

String studentModelToJson(StudentModel data) => json.encode(data.toJson());

class StudentModel {
  String docId;
  String name;
  int rollNo;
  String section;

  StudentModel({
    required this.docId,
    required this.name,
    required this.rollNo,
    required this.section,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    docId: json["docID"],
    name: json["name"],
    rollNo: json["rollNo"],
    section: json["section"],
  );

  Map<String, dynamic> toJson() => {
    "docID": docId,
    "name": name,
    "rollNo": rollNo,
    "section": section,
  };
}

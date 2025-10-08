import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_sec_5/models/tasks.dart';

class TaskServices{
  //create Task
  Future createTask(TaskModel model) async {
    return await FirebaseFirestore.instance
        .collection("TaskCollection")
        .add(model.toJson());
  }
  //update Task
  Future updateTask(TaskModel model) async {
    return await FirebaseFirestore.instance
        .collection("TaskCollection")
        .doc(model.docId)
        .update({'name': model.name});
  }
  //delete Task
  Future deleteTask(TaskModel model) async {
    return await FirebaseFirestore.instance
        .collection("TaskCollection")
        .doc(model.docId)
        .delete();
  }
  //markAsCompleted
  Future markAsCompleted(TaskModel model) async{
    return await FirebaseFirestore.instance
        .collection("TaskCollection")
        .doc(model.docId)
        .update({'isCompleted' : true});
  }
  //get Completed Task
  //get InCompleted Task
  //get All Task
}
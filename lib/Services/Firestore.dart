

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  // get collections of notes
  final CollectionReference notes = FirebaseFirestore.instance.collection("notes");


  Future <void> addNote(String note) {
    return notes.add(
      {
      "note" : note,
        "timeStamp": Timestamp.now(),
      }
    );
  }
}
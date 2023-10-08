import 'package:crudetest/Services/Firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController textController = TextEditingController();
  final FirestoreServices firestoreServices = FirestoreServices();
  void openNote(){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          ElevatedButton(
            onPressed: (){
              firestoreServices.addNote(textController.text);
              textController.clear();
              Navigator.pop(context);
            },
            child: Text("add"),
          )
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "notes"
        ),
      ),
      floatingActionButton: FloatingActionButton
        (onPressed: () {
          openNote();
      },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

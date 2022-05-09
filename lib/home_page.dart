import 'package:firebase_database/add_contents.dart';
import 'package:firebase_database/list_contents.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(215, 221, 233, 1) ,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.yellow], stops: [0.5, 1.0],
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30)
          )
        ),
        title: const Text("Your Appointment's"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  const AddContents()));
        },
        child: const Icon(Icons.add),
      ),
      body: const ListContents(),
    );

  }

}

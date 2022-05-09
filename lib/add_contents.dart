import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AddContents extends StatefulWidget {
  const AddContents({Key? key}) : super(key: key);
  @override
  _AddContentsState createState() => _AddContentsState();
}
class _AddContentsState extends State<AddContents> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _deptController = TextEditingController();
  final TextEditingController _regNoController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _serviceDetailsController = TextEditingController();
  final TextEditingController _inTimeController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  var name = "";
  var department = "";
  var regNo = "";
  var serviceDetails = "";
  var address = "";
  var inTime = "";
  var date = "";
  @override
  final _formKey = GlobalKey<FormState>();
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
        title: const Text("Book an Appointment!!!"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _nameController,
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Customer Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Information';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _deptController,
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Car Model Name and Company Name  ',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Information';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _regNoController,
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Car Registration Number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Information';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _addressController,
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Customer Address',
                ),
                maxLines: 4,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Information';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _dateController,
                keyboardType: TextInputType.datetime,
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Date',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Information';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _inTimeController,
                keyboardType: TextInputType.datetime,
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Time',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Information';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _serviceDetailsController,
                decoration:  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Service Required/Problem Faced',
                ),
                maxLines: 7,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Information';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150.0,
                height: 65.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // <-- Radius
                    ),
                  ),
                  onPressed: () async {
                    name =_nameController.text;
                    department = _deptController.text;
                    regNo = _regNoController.text;
                    address = _addressController.text;
                    serviceDetails =_serviceDetailsController.text;
                    inTime=_inTimeController.text;
                    date=_dateController.text;
                    if (_formKey.currentState!.validate()) {
                      await _addItem();
                      Navigator.of(context).pop();
                    }
                  },


                  child: const Text('       Book\n Appointment',style: TextStyle(fontSize: 20),),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  CollectionReference collegeInfo = FirebaseFirestore.instance.collection('CollegeInfo');
  Future<void> _addItem() {
    return collegeInfo.add({'name':name,'department':department,'regNo':regNo,'address':address,'serviceDetails':serviceDetails,'inTime':inTime,'date':date}).then((value) => print('User Added')).catchError((error)=> print('Failed Adding'));
  }
}

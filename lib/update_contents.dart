import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpdateContents extends StatefulWidget {
  final String id;
   const UpdateContents({Key? key,required this.id}) : super(key: key);

  @override
  _UpdateContentsState createState() => _UpdateContentsState();
}

class _UpdateContentsState extends State<UpdateContents> {

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


  CollectionReference collegeInfo = FirebaseFirestore.instance.collection('CollegeInfo');

  Future<void> _updateItem  (id,name,department,regNo,address,  serviceDetails,inTime ,date) async{
    return collegeInfo.doc(id).update({'name':name,'department':department,'regNo':regNo,'address':address,'serviceDetails':serviceDetails,'inTime':inTime,'date':date}).then((value) => print('User Update')).catchError((error)=> print('Failed Updating'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Data'),
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot<Map<String,dynamic>>>(
        future: FirebaseFirestore.instance.collection('CollegeInfo').doc(widget.id).get(),
        builder: ( _, snapshot){
          if(snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState != ConnectionState.done){
            return const Center(child:  CircularProgressIndicator());
          }
          final _formKey = GlobalKey<FormState>();

          // var data1 = snapshot.data!.data();
          // var name = data1!["name"];
          // var department = data1['department'];
          // var regNo = data1['regNo'];
          // return Column(
          //   mainAxisSize: MainAxisSize.min,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     TextField(
          //       controller: _nameController,
          //       decoration: const InputDecoration(hintText: 'Name'),
          //     ),
          //     const SizedBox(
          //       height: 10,
          //     ),
          //     TextField(
          //       controller: _deptController,
          //       decoration: const InputDecoration(hintText: 'Department Name'),
          //     ),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     TextField(
          //       controller: _regNoController,
          //       keyboardType: TextInputType.number,
          //       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          //       decoration: const InputDecoration(hintText: 'Registration Number'),
          //     ),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     ElevatedButton(
          //       onPressed: ()  {
          //         name = _nameController.text;
          //         department =_deptController.text;
          //         regNo = _regNoController.text;
          //
          //          _updateItem(widget.id,name,department,regNo);
          //         Navigator.of(context).pop();
          //       },
          //       child: const Text('Update'),
          //     ),
          //   ],
          // );
          return SingleChildScrollView(
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
                      if (value == null || value.isEmpty) {
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
                        if (_formKey.currentState!.validate()){
                          _updateItem(widget.id,name,department,regNo,address,serviceDetails,inTime,date);
                          Navigator.of(context).pop();
                        }

                      },


                      child: const Text('       Update\n Appointment',style: TextStyle(fontSize: 20),),

                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }


}

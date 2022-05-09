import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/update_contents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ListContents extends StatefulWidget {
  const ListContents({Key? key}) : super(key: key);

  @override
  _ListContentsState createState() => _ListContentsState();
}

class _ListContentsState extends State<ListContents> {

  final Stream<QuerySnapshot> collegeInfoStream = FirebaseFirestore.instance.collection('CollegeInfo').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot> (stream: collegeInfoStream,builder:(BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
      if (snapshot.hasError) {
        print("Something Went Wrong");
      }
      if (snapshot.connectionState == ConnectionState.done) {
        return const Center(child: CircularProgressIndicator());
      }
      final List contentsDocs =[];
      snapshot.data!.docs.map((DocumentSnapshot document){
        Map a = document.data() as Map<String,dynamic>;
        contentsDocs.add(a);
        a['id'] = document.id;
      }).toList();
      return SingleChildScrollView(
        child: Column(
          children: [
                    for(var i =0; i< contentsDocs.length;i++ )... [
                    InkWell(
                    onLongPress: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UpdateContents(id:contentsDocs[i]['id'].toString())));
                              },
                        child: Dismissible(
                          background: Container(
                            color: Colors.red,
                            child: const Icon(Icons.delete_forever),
                          ),
                          onDismissed: (DismissDirection direction){
                            _delete(contentsDocs[i]['id']);

                          },
                          key: ValueKey(contentsDocs[i]),
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              width: MediaQuery.of(context).size.width*100,
                              height:MediaQuery.of(context).size.width*0.7 ,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.center,
                                  colors: [Colors.deepOrangeAccent, Colors.orange],
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.02),
                                    // child: Icon(iconImages[index],color: iconColor[index],size: 40,),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: const BoxDecoration(
                                          color:Colors.white70,
                                          shape:BoxShape.circle,
                                          image: DecorationImage(
                                            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOHPKPyqYYiip5hxHYu96cUP28ZKd0WZ-TAg&usqp=CAU'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:  CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(contentsDocs[i]['department'].toString(),style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(contentsDocs[i]['name'],style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(left:6.0,top:3.0 ),
                                            child: Text(contentsDocs[i]['regNo'].toString(),style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:6.0,top:3.0 ),
                                            child: Text(contentsDocs[i]['address'].toString(),style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:6.0,top:6.0 ),
                                            child: Text('Date: '+contentsDocs[i]['date'].toString(),style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:6.0,top:3.0 ),
                                            child: Text('Time: '+contentsDocs[i]['inTime'].toString(),style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:6.0,top:3.0 ),
                                            child: Text('Issue:'+contentsDocs[i]['serviceDetails'].toString(),maxLines:7,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18),overflow: TextOverflow.fade,),
                                          ),
                                        ],

                                      )

                                    ],
                                  ),
                                    ],


                                  ),

                            ),
                          ),
                ),
              )
                    ],
          ],
        ),
      );
          }
      );
  }

  CollectionReference collegeInfo = FirebaseFirestore.instance.collection('CollegeInfo');
  Future<void > _delete(id) {
    return collegeInfo.doc(id).delete().then((value) => print('User Deleted')).catchError((error)=> print('Failed Delete'));

  }
}

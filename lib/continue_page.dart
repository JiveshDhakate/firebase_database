import 'package:firebase_database/home_page.dart';
import 'package:flutter/material.dart';
class ContinuePage extends StatelessWidget {
  const ContinuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color.fromRGBO(198, 246, 198, 1) ,
        body:Stack(
            children:[
              Positioned(
                top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.185,
                  width: MediaQuery.of(context).size.width*1,
                  color: const Color.fromRGBO(229, 97, 16, 0.5),
                  child: Row(
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.152,
                left: MediaQuery.of(context).size.width*0.45,
                child: Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.001),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color:Colors.white70,
                          shape:BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage('https://www.pngfind.com/pngs/m/28-288401_waving-hand-emoji-svg-png-download-emoji-hand.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ), //RImage
              Positioned(
                top: MediaQuery.of(context).size.height * 0.225,
                left: MediaQuery.of(context).size.width*0.05,
                right: MediaQuery.of(context).size.width*0.05,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Hey there!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 40,
                                decorationColor:Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Center(
                            child: Text("Having a Problem with your car??\n "
                                "We are here to fix that\n"
                                "Book an appointment @ EasyService !!!!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:  Border.all(
                                      color: Colors.black26,
                                    )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    Row(
                                      children: [
                                        const SizedBox(width: 5,),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            color:Colors.white70,
                                            shape:BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2061/2061956.png'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5,),
                                        const Text("Engine",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16
                                          ),
                                        )
                                      ],
                                    )

                                  ],
                                ),
                              ),
                              const SizedBox(width: 40,),
                              Row(
                                children: [
                                  const SizedBox(width: 5,),
                                  Container(
                                    height: 50,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border:  Border.all(
                                          color: Colors.black26,
                                        )
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 5,),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            color:Colors.white70,
                                            shape:BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage('https://thumbs.dreamstime.com/b/wheel-alignment-icon-trendy-design-style-isolated-white-background-vector-simple-modern-flat-symbol-web-site-mobile-135716171.jpg'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const[

                                            Text("Alignment",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16
                                              ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),// R1
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:  Border.all(
                                      color: Colors.black26,
                                    )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    Row(
                                      children: [
                                        const SizedBox(width: 5,),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            color:Colors.white70,
                                            shape:BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage('https://thumbs.dreamstime.com/b/oil-change-icon-logo-silhouette-oil-canister-bottle-gear-circle-arrow-oil-change-icon-logo-silhouette-oil-canister-168802593.jpg'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5,),
                                        const Text("Oil Change",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16
                                          ),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 40,),
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:  Border.all(
                                      color: Colors.black26,
                                    )
                                ),
                                child: Row(
                                  children: [
                                    // const SizedBox(width: 5,),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color:Colors.white70,
                                        shape:BoxShape.circle,
                                        image: DecorationImage(
                                          image: NetworkImage('https://image.shutterstock.com/image-vector/man-washing-car-vector-icon-260nw-1412774489.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text("Car Washing",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),//R2
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:  Border.all(
                                      color: Colors.black26,
                                    )
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 5,),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        color:Colors.white70,
                                        shape:BoxShape.circle,
                                        image: DecorationImage(
                                          image: NetworkImage('https://cdn2.vectorstock.com/i/1000x1000/59/61/air-conditioning-service-car-icon-vector-18095961.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text("AC servicing",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 40,),
                              Container(
                                height: 50,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border:  Border.all(
                                      color: Colors.black26,
                                    )
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 5,),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        color:Colors.white70,
                                        shape:BoxShape.circle,
                                        image: DecorationImage(
                                          image: NetworkImage('https://www.signifikant.se/wp-content/uploads/2019/09/repair-mechanism-1.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text("Spare Parts",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),//R3
                          const SizedBox(height: 20,),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       height: 50,
                          //       width: 120,
                          //       decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(25),
                          //           border:  Border.all(
                          //             color: Colors.black26,
                          //           )
                          //       ),
                          //       child: Row(
                          //         children: [
                          //           const SizedBox(width: 5,),
                          //           Container(
                          //             width: 40,
                          //             height: 40,
                          //             decoration: const BoxDecoration(
                          //               color:Colors.white70,
                          //               shape:BoxShape.circle,
                          //               image: DecorationImage(
                          //                 image: NetworkImage('https://png.pngtree.com/png-vector/20191130/ourlarge/pngtree-surfer-man-on-surfboard-icon-circle-png-image_2059201.jpg'),
                          //                 fit: BoxFit.fill,
                          //               ),
                          //             ),
                          //           ),
                          //           const SizedBox(width: 5,),
                          //           Column(
                          //             mainAxisAlignment: MainAxisAlignment.center,
                          //             children: const [
                          //               Text("Surfing",
                          //                 style: TextStyle(
                          //                   fontWeight: FontWeight.bold,
                          //                   fontSize: 16,
                          //                 ),)
                          //             ],
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //     const SizedBox(width: 40,),
                          //     Container(
                          //       height: 50,
                          //       width: 140,
                          //       decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(25),
                          //           border:  Border.all(
                          //             color: Colors.black26,
                          //           )
                          //       ),
                          //       child: Row(
                          //         children: [
                          //           const SizedBox(width: 5,),
                          //           Container(
                          //             width: 30,
                          //             height: 30,
                          //             decoration: const BoxDecoration(
                          //               color:Colors.white70,
                          //               shape:BoxShape.circle,
                          //               image: DecorationImage(
                          //                 image: NetworkImage('https://cdn-icons-png.flaticon.com/512/3197/3197157.png'),
                          //                 fit: BoxFit.fill,
                          //               ),
                          //             ),
                          //           ),
                          //           const SizedBox(width: 5,),
                          //           Column(
                          //             mainAxisAlignment: MainAxisAlignment.center,
                          //             children: const [
                          //               Text("Sightseeing",
                          //                 style: TextStyle(
                          //                   fontWeight: FontWeight.bold,
                          //                   fontSize: 16,
                          //                 ),
                          //               ),
                          //             ],
                          //           ),
                          //         ],
                          //       ),
                          //     )
                          //   ],
                          // ),//R4
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Center(
                            child: Text("We have a solution for every problem!!\n ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        SizedBox(
                          width: 150.0,
                          height: 65.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // <-- Radius
                              ),
                            ),
                            onPressed: ()  {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));
                            },


                            child: const Text('Continue',style: TextStyle(fontSize: 25),),

                          ),
                        ),
                        // InkWell(
                        //   child: const Text('CONTINUE',
                        //     style: TextStyle(
                        //       fontSize: 20,
                        //       fontWeight: FontWeight.w500,
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        //   onTap: (){
                        //     Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => const HomePage()),
                        //     );
                        //   },
                        // )
                      ],
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),//RHT
              //RPara
              //Column Table
            ]
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterinst/Appbar.dart';
import 'package:flutterinst/profile.dart';

import 'model.dart';
class cor extends StatefulWidget {
  const cor({super.key});

  @override
  State<cor> createState() => _corState();
}

class _corState extends State<cor> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 3,
        child: Scaffold(
          appBar:AppBar(
            bottomOpacity: 0.0,
            elevation: 0.0,
            toolbarHeight: 40,
            backgroundColor: Color(0xFFfafafa),
            title:  Container(
              //height: 100,

              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,),
                  Padding(
                    padding: EdgeInsets.fromLTRB(120, 5, 70, 5),
                    child: Text('ladyla', textScaleFactor: 1, style: TextStyle(
                        color: Colors.black,
                        fontSize: 20, fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.notifications_outlined, color: Colors.black,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Icon(Icons.more_horiz, color: Colors.black,),
                  )
                ],
              ),
            ),
          ),
          body:
          NestedScrollView(

              headerSliverBuilder: (context,isScrolled){
                stretchModes: [StretchMode.zoomBackground];
                return [
                  SliverAppBar(
                    //stretch: true,
                    backgroundColor: Colors.white,
                    //snap: true,
                    //  floating: true,
                    //  pinned: true,
                    //surfaceTintColor:Colors.black,
                    collapsedHeight: 380,
                    expandedHeight: 380,
                    //toolbarHeight: 100,
                    //leading: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,),
                    // title:appbar(),

                    // Row(
                    //
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,),
                    //     Padding(
                    //       padding: EdgeInsets.fromLTRB(100,5,100,5),
                    //       child: Text('ladyla', textScaleFactor: 1,style: TextStyle(
                    //           color: Colors.black,
                    //           fontSize: 20,fontWeight: FontWeight.bold
                    //       ),),
                    //     ),
                    //     Padding(
                    //       padding: EdgeInsets.all(8.0),
                    //       child: Icon(Icons.notifications_outlined,color: Colors.black,),
                    //     ),
                    //     Padding(
                    //       padding: EdgeInsets.all(8.0),
                    //       child: Icon(Icons.more_horiz,color: Colors.black,),
                    //     )
                    //   ],
                    // ),

                    //appbar(),

                    //MyAppBar(),

                    //  Text('ladyla', textScaleFactor: 1,style: TextStyle(
                    // color: Colors.black,
                    // fontSize: 20,fontWeight: FontWeight.bold
                    //  ),),


                    //appbar(),

                    // pinned: false,


                    flexibleSpace: FlexibleSpaceBar(
                      background:  ProfileView(),
                    ),

                    // bottom: const TabBar(
                    //   tabs:
                    //   [
                    //     Tab(icon: Icon(Icons.grid_on,color: Colors.black),),
                    //     Tab(icon: Icon(Icons.video_collection,color: Colors.black)),
                    //     Tab(icon: Icon(Icons.person_3_outlined,color: Colors.black))
                    //
                    //
                    //   ],
                    //
                    // ),
                   // pinned: true,
                  ),



                  //SliverPersistentHeader(delegate: SliverPersistentHeaderDelegate,
                  //     delegate: (
                  // TabBar(
                  //   tabs: [
                  //     Tab(icon: Icon(Icons.flight)),
                  //     Tab(icon: Icon(Icons.directions_transit)),
                  //     Tab(icon: Icon(Icons.directions_car)),
                  //   ],
                  // ),
                  //     )
                  // )
                  // SliverList(delegate: SliverChildListDelegate(
                  //
                  // ))
                ];
              },
              body:Column(
                children: [
                  TabBar(
                    tabs:
                    [
                      Tab(icon: Icon(Icons.grid_on,color: Colors.black),),
                      Tab(icon: Icon(Icons.video_collection,color: Colors.black)),
                      Tab(icon: Icon(Icons.person_3_outlined,color: Colors.black))


                    ],

                  ),
                  Expanded(
                    child: TabBarView(children: [
                      GridView.builder(
                        //physics: NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              crossAxisSpacing: 0,
                              childAspectRatio: 1.5,
                              //crossAxisSpacing: 10,
                              mainAxisSpacing:1,
                              mainAxisExtent: 130


                          ),

                          itemCount:NewCollection.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(
                              //color: Colors.black,
                                height: 500,
                                width: double.infinity,

                                child: Column(
                                  children: [

                                    Container(
                                      //color: Colors.cyan,
                                      height: 130,
                                      //alignment: Alignment.topRight,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        //color: Colors.cyan,
                                        image:  DecorationImage(
                                          image: AssetImage(NewCollection[index].image),
                                          //image: AssetImage(lis[index].image),
                                          fit: BoxFit.fill,
                                        ),
                                        // color: Colors.amber,

                                        //borderRadius: BorderRadius.circular(5)),
                                        //child: Image.asset("assets/image.png",fit: BoxFit.fill,),

                                      ),
                                    )
                                  ],

                                )

                            );




                          }

                      ),
                      GridView.builder(
                        //physics: NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              crossAxisSpacing: 0,
                              childAspectRatio: 1.5,
                              //crossAxisSpacing: 10,
                              mainAxisSpacing:1,
                              mainAxisExtent: 130


                          ),

                          itemCount:NewCollection.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(
                              //color: Colors.black,
                                height: 500,
                                width: double.infinity,

                                child: Column(
                                  children: [

                                    Container(
                                      //color: Colors.cyan,
                                      height: 130,
                                      //alignment: Alignment.topRight,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        //color: Colors.cyan,
                                        image:  DecorationImage(
                                          image: AssetImage(NewCollection[index].image),
                                          //image: AssetImage(lis[index].image),
                                          fit: BoxFit.fill,
                                        ),
                                        // color: Colors.amber,

                                        //borderRadius: BorderRadius.circular(5)),
                                        //child: Image.asset("assets/image.png",fit: BoxFit.fill,),

                                      ),
                                    )
                                  ],

                                )

                            );




                          }

                      ),
                      GridView.builder(
                        //physics: NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              crossAxisSpacing: 0,
                              childAspectRatio: 1.5,
                              //crossAxisSpacing: 10,
                              mainAxisSpacing:1,
                              mainAxisExtent: 130


                          ),

                          itemCount:NewCollection.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(
                              //color: Colors.black,
                                height: 500,
                                width: double.infinity,

                                child: Column(
                                  children: [

                                    Container(
                                      //color: Colors.cyan,
                                      height: 130,
                                      //alignment: Alignment.topRight,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        //color: Colors.cyan,
                                        image:  DecorationImage(
                                          image: AssetImage(NewCollection[index].image),
                                          //image: AssetImage(lis[index].image),
                                          fit: BoxFit.fill,
                                        ),
                                        // color: Colors.amber,

                                        //borderRadius: BorderRadius.circular(5)),
                                        //child: Image.asset("assets/image.png",fit: BoxFit.fill,),

                                      ),
                                    )
                                  ],

                                )

                            );




                          }

                      ),
                    ],
                    ),
                  )
                ],
              ),


            )
          ),
        )

    ;

  }
}



// CustomScrollView(
//   slivers: [
//     SliverAppBar(
//
//  leading: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,),
//  title: Align(
//    alignment: Alignment.center,
//    child: Text('ladyla', textScaleFactor: 1,style: TextStyle(
//        color: Colors.black,
//    ),
// // textAlign: TextAlign.center,
//    ),
//  ),
//  actions: [
//    Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Icon(Icons.notifications_outlined,color: Colors.black,),
//    ),
//    Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Icon(Icons.more_horiz,color: Colors.black,),
//    )
//],

//
//       backgroundColor: Colors.white,
//       //floating: true,
//       expandedHeight: 300,
//       flexibleSpace: FlexibleSpaceBar(
//
//
//
//
//     ),
//     )
//   ],
// ),



//menu
// actions: [
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Icon(Icons.notifications_outlined,color: Colors.black,),
//   ),
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Icon(Icons.more_horiz,color: Colors.black,),
//   )
// ],

//grid

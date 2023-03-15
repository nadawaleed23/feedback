import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  List<Widget> actions = [
    ListTile(leading:const Icon(Icons.home, color: Colors.black,), title:const Text("Home",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),onTap: (){},),
    ListTile(leading:const Icon(Icons.person_search, color: Colors.black,), title:const Text("Help",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),onTap: (){},),
    ListTile(leading:const Icon(Icons.question_mark_outlined, color: Colors.black,), title:const Text("FeedBack",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),onTap: (){},),
    ListTile(leading:const Icon(Icons.people, color: Colors.black,), title:const Text("Invite Friend",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),onTap: (){}),
    ListTile(leading:const Icon(Icons.share, color: Colors.black,), title:const Text("Rate App",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),onTap: (){},),

    ListTile(leading:const Icon(Icons.info, color: Colors.black,), title:const Text("About Us",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),onTap: (){},),


  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black
          ),
        ),
        body: Container(
          padding:  const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 30,),
              SizedBox(height:250,width: double.maxFinite,
                  child: Image.network("assets/images/1484584.png",fit: BoxFit.fill,)
              ),
              const SizedBox(height: 10,),
              const Text("Your FeedBack :)", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 25, ),
                textAlign: TextAlign.center,),
              const SizedBox(height: 10,),
              const Text("Give your best time for this moment.", style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black54 ),
                textAlign: TextAlign.center,
             ),
              const SizedBox(height: 10,),
              const Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(

                    maxLines: 4,
                    decoration: InputDecoration(

                      hintText: "Enter your feedback...",


                          hintStyle: TextStyle( fontSize: 20, color: Colors.black45),


                      border: InputBorder.none,
                      ),

                      ),
                )
                  ),
              const SizedBox(height: 10,),
              SizedBox(height: 40,width: 120,child: ElevatedButton(onPressed: (){}, child:const Text("Send")))
            ]
    ),
    ),
        drawer: Drawer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              title: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       Card(shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(100)

                                       ),
                                         color: Colors.transparent,
                                       elevation: 6,
                                        child: const CircleAvatar(

                                          backgroundImage: NetworkImage("assets/images/brand.jpg"),
                                          radius: 60,
                                        ),
                                      ),

                                    ],
                                  ),
                              ),


                              onTap: (){},
                              subtitle:const Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 35),
                                child:  Text("Brand",style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(height:400,width: double.maxFinite,
                      decoration:const BoxDecoration(
                        border:Border.symmetric(horizontal: BorderSide(
                          color: Colors.black26
                        )  ),

                      ),
                      child: ListView.builder(scrollDirection: Axis.vertical,
                          shrinkWrap: true,

                          itemCount: actions.length,
                          itemBuilder: (ctx, index){
                            return Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: actions[index]

                            )
                            ;
                          }),
                      ),
                      ListTile(trailing:const Icon(Icons.settings_power_outlined, color: Colors.red,), title:const Text("Sign Out",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),onTap: (){},),
                    ],

                  ),
        ),
    ),
    );



  }
}



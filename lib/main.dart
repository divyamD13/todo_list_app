import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TO-DO App',
      home:Home(),


    );
  }
}
 class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: buildAppBar(),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            children: [
              Expanded(
                child:

                  ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, bottom: 20),
                          child: Text('MY TASKS', style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                          ),

                        ),
                   Container(
                  child: ListTile(
                   onTap: () {},
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20),
                   ),
                   tileColor: Colors.yellow,
                     leading: Icon(Icons.check_circle, color: Colors.pinkAccent,),
                   title: Text('CODING CLUB Assignment',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                   trailing: Container(
                    height: 30,
                    width: 30,
                     decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                   ),
                   child: IconButton(
                    color: Colors.white,
                   iconSize: 10,
                   icon: Icon(Icons.delete_forever_outlined
                     ), onPressed: () {},

                               ),
                          ),
                        )
                       ),

                  ]

                  )

              ),
            ],
          )

      ),

      floatingActionButton: FloatingActionButton(onPressed: () {  },
         child: IconButton(
        color: Colors.black,

        icon: Icon(Icons.add
        ),

           onPressed: () {},
        ),
          backgroundColor: Colors.yellowAccent,


      )

    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.limeAccent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          Icon(Icons.menu,
            color: Colors.black54,
            size: 30,
          ),
             Text('TO-DO',style: TextStyle(
                 fontSize: 30, fontWeight: FontWeight.w600,color: Colors.black),),

          Container(
              height: 40,
              width: 40,

              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/checklist_106575.png'),
              )
          )
        ],)
    );
  }

}


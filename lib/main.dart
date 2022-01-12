import 'package:adinesiaflutter/page2.dart';
import 'package:adinesiaflutter/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const PageUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//stateless : view /
//statefull : get data dari database
// ketik st

class PageUtama extends StatelessWidget {
  const PageUtama({Key? key}) : super(key: key);

  //view
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Project Adinesia'),
      ),

      //AppBar : Widget
      //appBar  : properties

      //child : bisa menampung 1 widget
      //children : bisa menampung bberapa widget (>1 widget)
      // children --> row, column, stack, listview
      //

      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10,),//untuk jarak
              Text('Halo Selamat Datang', style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
              MaterialButton(onPressed: (){
                //navigator
                // Navigator.push(context, MaterialPageRoute(builder: (context)
                // => Page1()
                // ));
              },
                child: Text('Page 1'),
                color: Colors.green,
                textColor: Colors.white,
              ),
              SizedBox(height: 5,),
              MaterialButton(onPressed: (){
                //navigator
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => Page2()
                ));
              },
                child: Text('Page 2'),
                color: Colors.green,
                textColor: Colors.white,
              ),
              SizedBox(height: 5,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => Page3()
                ));
              },
                child: Text('Page 3'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ],


          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  //constructor penampung data
  String nNama ="";
  String nPass = "";
  Page1({required this.nNama, required this.nPass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page 1'),
      ),

      body: Center(
        child: Text('Halo Selamat Datang ${nNama}'),
      ),
    );
  }
}


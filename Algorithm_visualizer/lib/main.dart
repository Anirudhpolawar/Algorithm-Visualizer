import 'package:flutter/material.dart';

import 'Screens/DP.dart';
import 'Screens/Divide.dart';
import 'Screens/Greedy.dart';
import 'Screens/Sort.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: MyHomePage(title: 'Algorithm Visualizer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/Daa.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                    padding: EdgeInsets.all(8),
                    child:   RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)),
                        onPressed: () {
                          Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Sort()),
                                  );
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Sorting Techniques".toUpperCase(),
                          style:  TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber )),
                      ),
                ),

                 Padding(
                    padding: EdgeInsets.all(8),
                    child:   RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)),
                        onPressed: () {
                          Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => DP()),
                                  );
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Dyanamic Programming".toUpperCase(),
                          style:  TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber )),
                      ),
                ),

                 Padding(
                    padding: EdgeInsets.all(8),
                    child:   RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)),
                        onPressed: () {
                          Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Greedy()),
                                  );
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Greedy ALgorithms".toUpperCase(),
                          style:  TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber )),
                      ),
                ),

                Padding(
                    padding: EdgeInsets.all(8),
                    child:   RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)),
                        onPressed: () {
                          Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Divide()),
                                  );
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Divide and Conquer".toUpperCase(),
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber )),
                      ),
                ),
              
            ],
          ),
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

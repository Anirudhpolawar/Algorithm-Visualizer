import 'package:Algorithm_visualizer/Algorithms/DP/LIS.dart';
import 'package:Algorithm_visualizer/Algorithms/DP/Logestcommon.dart';
import 'package:flutter/material.dart';

class DP extends StatefulWidget {
  @override
  _DPState createState() => _DPState();
}

class _DPState extends State<DP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text("Dynamic Programming Visulization"),
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
                          side: BorderSide(color: Colors.blue)),
                        onPressed: () {
                             Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Logestcommon()),
                                  );
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Longest commong subsequence".toUpperCase(),
                          style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.amber )),
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
                                    MaterialPageRoute(builder: (context) => LIS()),
                                  );
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Longest Incresing sequence".toUpperCase(),
                          style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber )),
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
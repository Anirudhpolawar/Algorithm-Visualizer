import 'package:Algorithm_visualizer/Algorithms/Sorting/Merge.dart';
import 'package:Algorithm_visualizer/Algorithms/Sorting/Quick.dart';
import 'package:Algorithm_visualizer/Algorithms/Sorting/RandomizeQuick.dart';
import 'package:Algorithm_visualizer/Algorithms/Sorting/bubblesort.dart';
import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text("Sorting Visulization"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Daa.jpg"),
            fit: BoxFit.cover,
          ),
        ),
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
                                    MaterialPageRoute(builder: (context) => BuBBle()),
                                  );
                         
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("bubble sort".toUpperCase(),
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
                                    MaterialPageRoute(builder: (context) => Quick()),
                                  );
                          
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Quick Sort".toUpperCase(),
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
                                    MaterialPageRoute(builder: (context) => Merge()),
                                  );
                         
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Merge Sort".toUpperCase(),
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
                                    MaterialPageRoute(builder: (context) => RandomizeQuick()),
                                  );
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Randomize Quick Sort".toUpperCase(),
                          style:  TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber )),
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
import 'package:flutter/material.dart';

class Divide extends StatefulWidget {
  @override
  _DivideState createState() => _DivideState();
}

class _DivideState extends State<Divide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text("Divide and Conquer"),
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
                         
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Josephus".toUpperCase(),
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber )),
                      ),
                ),

                 Padding(
                    padding: EdgeInsets.all(8),
                    child:   RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)),
                        onPressed: () {
                          
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Fast Modulo".toUpperCase(),
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
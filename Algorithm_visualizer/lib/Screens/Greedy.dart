import 'package:flutter/material.dart';

class Greedy extends StatefulWidget {
  @override
  _GreedyState createState() => _GreedyState();
}

class _GreedyState extends State<Greedy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text("Greedy algortithm Visualization"),
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
                         
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Stock buy and Sell".toUpperCase(),
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
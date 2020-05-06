
import 'package:flutter/material.dart';

class Josh extends StatefulWidget {
  @override
  _LISJosh createState() => _LISJosh();
}

class _LISJosh extends State<Josh> {

 
  List<List<int> > listarray = [];
  List<List<int> > show = [];
  final nameHolder = TextEditingController();
  int it = 0;
  int val;
 

  void sort()
  {
      listarray.clear();
      show.clear();
      int n = val;
       int p = 1; 
    while (p <= n) 
     {  
         List<int> temp1 = [];
        temp1.add(p);
         listarray.add(temp1);
         show.add(temp1);
        p *= 2; 

     }
    //  List<int> temp2 = [];
    //     temp2.add(p);
    //      listarray.add(temp2);
    //      show.add(temp2);

     List<int> temp1 = [];
        temp1.add((2 * n) - p + 1);
         listarray.add(temp1);
         show.add(temp1);

  }





Widget algoview()
{
  if(listarray.length == 0)
    {
        return Material(
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                  child:Center(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children : <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.sms_failed,size:40),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Empty",style: TextStyle(fontSize:20),),
                            ),
                          ]
                        ),
                      ],
                    ),
                  ),
          );
    }
    else
    {
      return
        Material(
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child:Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                      height: MediaQuery.of(context).size.height * 0.50,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                          itemCount: listarray.length, itemBuilder: (context, index) {
                            return Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                                height: MediaQuery.of(context).size.height * 0.15,
                                child: Center(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                      itemCount: listarray[index].length, itemBuilder: (context, i) {
                                        if(show[index][i] == -11)
                                        {
                                          return Center(
                                            child: Column(
                                              children: <Widget>[
                                                                Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Text((index+1).toString(),style: TextStyle(fontSize:20),),
                                                ),
                                                Center(
                                                  child: Container(
                                                  width: MediaQuery.of(context).size.width * 0.25,
                                                  child: Card(
                                                    shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(15.0),
                                                                  ),
                                                    color: Colors.red,
                                                    child: Center(
                                                      child: Container(
                                                        child: Center(child: Text(listarray[index][i].toString(), style: TextStyle(color: Colors.black, fontSize: 36.0),)),
                                                      ),
                                                    ),
                                                  ),
                                                    ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                        else
                                        {
                                              return Center(
                                                child: Container(
                                                    width: MediaQuery.of(context).size.width * 0.25,
                                                    child: Center(
                                                      child: Card(
                                                        shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(15.0),
                                                              ),
                                                        color: Colors.grey,
                                                        child: Center(
                                                          child: Container(
                                                            child: Center(child: Text(listarray[index][i].toString(), style: TextStyle(color: Colors.black, fontSize: 36.0),)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                            ),
                                              );
                                        }
                                        
                              }),
                                ),
                          );
                    }),
                ),
          );   
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("    Josephus    ")
      ),
      body:Center(
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
                Container(
                width: 100,
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    if(value.isEmpty)
                    {

                    }
                    else
                    {
                      val = int.parse(value);
                      setState(() {
                        
                      });
                    }
                   },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText : " N  ",
                    border : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color : Colors.amber,
                          style : BorderStyle.solid,
                        )
                    )
                  ),
                ),
              ),
              

              RaisedButton(
                color: Colors.blue,
                 onPressed: (){
                     sort();
                     setState(() {
                       
                     });
                 },
                 child: Text(" Find "),
                shape: new RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(18.0),
                                                    side: BorderSide(color: Colors.blue)
                                                  ),
               ),

          
             Padding(
                       padding: const EdgeInsets.all(16.0),
                        child: Text("Visualization",style: TextStyle(fontSize:20),),
                    ),
             algoview(),
            
             
            ]
          ),
        ),
      ) 
      
    );
  }
}



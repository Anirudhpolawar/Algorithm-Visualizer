
import 'package:flutter/material.dart';

class Fast extends StatefulWidget {
  @override
  _LISFast createState() => _LISFast();
}

class _LISFast extends State<Fast> {

 
  List<List<int> > listarray = [];
  List<List<int> > show = [];
  final nameHolder = TextEditingController();
  int it = 0;
  int val;
  int val2;
  int val3;

  void sort()
  {
      listarray.clear();
      show.clear();
      int temp = modularexp(val, val2,val3);
      List<int> temp1 = [];
        temp1.add(temp);
         listarray.add(temp1);
         show.add(temp1);
      
  }

int modularexp(int a,int b,int n)
{
    //Edge case if b = 1
    if(b==1)
        return a%n;
    
    //b is even
    if(b%2==0)
    {
       
        int temp=modularexp(a,(b/2).ceil(),n);
         List<int> temp1 = [];
        temp1.add(temp);
         listarray.add(temp1);
         show.add(temp1);
        return (temp*temp)%n;
    }
    int temp=modularexp(a,(b/2).ceil(),n);
    List<int> temp1 = [];
        temp1.add(temp);
         listarray.add(temp1);
         show.add(temp1);
    return (temp*temp*a)%n;
 
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
        title:Text("    Fast Modulo   ")
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
                    hintText : " A  ",
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
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if(value.isEmpty)
                      {

                      }
                      else
                      {
                        val2 = int.parse(value);
                        setState(() {
                          
                        });
                      }
                     },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText : " b ",
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
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if(value.isEmpty)
                      {

                      }
                      else
                      {
                        val3 = int.parse(value);
                        setState(() {
                          
                        });
                      }
                     },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText : "  C  ",
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



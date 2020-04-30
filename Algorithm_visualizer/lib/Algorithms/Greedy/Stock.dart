
import 'package:flutter/material.dart';

class Stock extends StatefulWidget {
  @override
  _LISStock createState() => _LISStock();
}

class _LISStock extends State<Stock> {

 
  List<int> array = [];
  List<List<int> > listarray = [];
  List<List<int> > show = [];
  final nameHolder = TextEditingController();
  int it = 0;
  int val;

  void sort()
  {
      it = array.length;
      listarray.clear();
      show.clear();
      int first = 0;
      it = 0;
      for(int i = 1;i<array.length;i++)
	    {
	        
	        if(array[i]<array[i-1])
	        {
	           if(array[i-1]-array[first]>0)
	           {
                List<int> temp1 = [];
                List<int> temp2 = [];
                 for(int j = 0;j<array.length;j++)
                 {
                    temp2.add(0);
                    temp1.add(array[j]);
                 }
                 listarray.add(temp1);
                  show.add(temp2);
                  show[show.length-1][first] = 1;
                  show[show.length-1][i-1] = 1;
	                 it += array[i-1]-array[first];
	           }
	            first=i;
	        }
	        else if(i==array.length-1&&array[i]-array[first]>0)
	        {
	              List<int> temp1 = [];
                List<int> temp2 = [];
                 for(int j = 0;j<array.length;j++)
                 {
                    temp2.add(0);
                    temp1.add(array[j]);
                 }
                 listarray.add(temp1);
                  show.add(temp2);
                  show[show.length-1][first] = 1;
                  show[show.length-1][i] = 1;
                   it += array[i]-array[first];      
	        }

	    }
      
      
  }

Widget listview()
{
  if(array.length == 0)
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
                              child: Icon(Icons.data_usage,size:40),
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
                      height: MediaQuery.of(context).size.height * 0.13,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: array.length, itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(15.0),
                                          ),
                                color: Colors.grey,
                                child: Container(
                                  child: Center(child: Text(array[index].toString(), style: TextStyle(color: Colors.black, fontSize: 36.0),)),
                                ),
                              ),
                        );
                    }),
                ),
          );   
    }
}

Widget algoview()
{
  if(array.length == 0)
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
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                    itemCount: listarray[index].length, itemBuilder: (context, i) {
                                      if(show[index][i] == 1)
                                      {
                                        return Column(
                                          children: <Widget>[
                                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text((index+1).toString(),style: TextStyle(fontSize:20),),
                                            ),
                                            Container(
                                            width: MediaQuery.of(context).size.width * 0.15,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(15.0),
                                                            ),
                                              color: Colors.red,
                                              child: Container(
                                                child: Center(child: Text(listarray[index][i].toString(), style: TextStyle(color: Colors.black, fontSize: 36.0),)),
                                              ),
                                            ),
                                              ),
                                          ],
                                        );
                                      }
                                      else
                                      {
                                            return Container(
                                                width: MediaQuery.of(context).size.width * 0.15,
                                                child: Card(
                                                  shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(15.0),
                                                        ),
                                                  color: Colors.grey,
                                                  child: Container(
                                                    child: Center(child: Text(listarray[index][i].toString(), style: TextStyle(color: Colors.black, fontSize: 36.0),)),
                                                  ),
                                                ),
                                          );
                                      }
                                      
                              }),
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
        title:Text("Stock buy and Sell")
      ),
      body:Center(
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
                Container(
                width: 100,
                child: TextField(
                  controller: nameHolder,
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
                    hintText : "Element",
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
                     array.add(val);
                     print(val);
                     sort();
                     nameHolder.clear();
                     setState(() {
                       
                     });
                 },
                 child: Text("Insert"),
                shape: new RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(18.0),
                                                    side: BorderSide(color: Colors.blue)
                                                  ),
               ),

             listview(),
             Padding(
                       padding: const EdgeInsets.all(16.0),
                        child: Text("Visualization",style: TextStyle(fontSize:20),),
                    ),
             algoview(),
             Padding(
                       padding: const EdgeInsets.all(16.0),
                        child: Text("Total Profit  : $it",style: TextStyle(fontSize:20),),
                    ),
             
            ]
          ),
        ),
      ) 
      
    );
  }
}



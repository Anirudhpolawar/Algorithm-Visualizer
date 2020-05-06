
import 'dart:math';
import 'package:Algorithm_visualizer/Screens/DetailCard.dart';
import 'package:flutter/material.dart';

class RandomizeQuick extends StatefulWidget {
  @override
  _RandomizeQuickState createState() => _RandomizeQuickState();
}

class _RandomizeQuickState extends State<RandomizeQuick> {

  List<int> loc = [];
  List<int> array = [];
  List<int> sortedarray = [];
  List<List<int> > listarray = [];
  final nameHolder = TextEditingController();
  int it = 0;
  int val;

  void copy(int p)
  {
    List<int> temp = [];
      for(int i = 0;i<sortedarray.length;i++)
      {
          temp.add(sortedarray[i]);
          print(sortedarray[i]);
      }
      listarray.add(temp);
      loc.add(p);
  }

  int partition (int low, int high)  
{  
    int pivot = sortedarray[high]; 
    int i = (low - 1); 
  
    for (int j = low; j <= high - 1; j++)  
    {  
      
        if (sortedarray[j] < pivot)  
        {  
            i++; 
            int temp = sortedarray[i];
            sortedarray[i] = sortedarray[j];
            sortedarray[j] = temp;  
        }  
    }  
    int temp = sortedarray[i+1];
    sortedarray[i+1] = sortedarray[high];
    sortedarray[high] = temp;  
    return (i + 1);  
}  

  void  quickSort(int low,int high)
  {
      if (low < high)  
    {  
        Random r = new Random();
        int pi =low + r.nextInt(high-low);  
        copy(pi);
        it++;
        quickSort(low, pi - 1);  
        quickSort(pi + 1, high);  
    }  
  }

  void sort()
  {
      it = 0;
      listarray.clear();
      loc.clear();
      sortedarray.clear();
      for(int i = 0;i<array.length;i++)
            sortedarray.add(array[i]);
       quickSort(0,array.length-1);
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
                                      if(i == loc[index])
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
        title:Text("Randomize Quick Sort")
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
                        child: Text("Visualization (Pivot is Random)",style: TextStyle(fontSize:20),),
                    ),
             algoview(),
             Padding(
                       padding: const EdgeInsets.all(16.0),
                        child: Text("Iterations : $it",style: TextStyle(fontSize:20),),
                    ),
              carddetails("Θ(N^2)","Θ(N log N) ","When Randomly Selected elemented is the middle","randomly chosen pivot is selected in sorted or reverse sorted order.","used everywhere where a stable sort is not needed"),

             
            ]
          ),
        ),
      ) 
      
    );
  }
}



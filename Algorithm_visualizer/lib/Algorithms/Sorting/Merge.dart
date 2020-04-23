

import 'package:flutter/material.dart';

class Merge extends StatefulWidget {
  @override
  _MergeState createState() => _MergeState();
}

class _MergeState extends State<Merge> {

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

  void merge(int l, int m, int r) 
{ 
    int i, j, k; 
    int n1 = m - l + 1; 
    int n2 =  r - m; 
  
    /* create temp arrays */
    List<int> L = [];
    List<int> R = []; 
  
    /* Copy data to temp arrays L[] and R[] */
    for (i = 0; i < n1; i++) 
        L.add(sortedarray[l + i]); 
    for (j = 0; j < n2; j++) 
        R.add(sortedarray[m + 1+ j]); 
  
    /* Merge the temp arrays back into arr[l..r]*/
    i = 0; // Initial index of first subarray 
    j = 0; // Initial index of second subarray 
    k = l; // Initial index of merged subarray 
    while (i < n1 && j < n2) 
    { 
        if (L[i] <= R[j]) 
        { 
            sortedarray[k] = L[i]; 
            i++; 
        } 
        else
        { 
            sortedarray[k] = R[j]; 
            j++; 
        } 
        k++; 
    } 
  
    /* Copy the remaining elements of L[], if there 
       are any */
    while (i < n1) 
    { 
        sortedarray[k] = L[i]; 
        i++; 
        k++; 
    } 
  
    /* Copy the remaining elements of R[], if there 
       are any */
    while (j < n2) 
    { 
        sortedarray[k] = R[j]; 
        j++; 
        k++; 
    } 
} 
  
  void mergeSort( int l, int r) 
{ 
    if (l < r) 
    { 
        int m = (l+(r-l)/2).toInt(); 

        
        mergeSort(l, m); 
        mergeSort(m+1, r); 
        merge(l, m, r);
        copy(m); 
        it++;
        
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
       mergeSort(0,array.length-1);
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
        title:Text("Merge Sort")
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
                        child: Text("Iterations : $it",style: TextStyle(fontSize:20),),
                    ),
             
            ]
          ),
        ),
      ) 
      
    );
  }
}



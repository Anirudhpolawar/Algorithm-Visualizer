

import 'package:flutter/material.dart';

class Logestcommon extends StatefulWidget {
  @override
  _LogestcommonState createState() => _LogestcommonState();
}

class _LogestcommonState extends State<Logestcommon> {

  List<List<int> > listarray = [];
  List<List<int> > show = [];
  String x ="";
  String y ="";

  int max(int m,int k)
  {
    if(m>k)
      return m;
    else
      return k;
  }

void lcs( int m, int n )  
{   
    int i, j;  
    for (i = 0; i <= m; i++)  
    {  
        for (j = 0; j <= n; j++)  
        {  
        if (i == 0 || j == 0)  
             listarray[i][j] = 0;  
      
        else if (x[i - 1] == y[j - 1])  
             listarray[i][j] =  listarray[i - 1][j - 1] + 1;  
      
        else
             listarray[i][j] = max( listarray[i - 1][j],  listarray[i][j - 1]);  
        }  
    }  
        
  }  

  void track(int m,int n)
  {
    int i = m;
    int j = n;
    for(;i>=0;i--)
    {
      for(;j>0;j--)
      {
        show[i][j] = 1;
        if(listarray[i][j]!=listarray[i][j-1])
        {
           show[i][j] = 2;
          break;
        }
      }
    }
  }

  void lcsa()
  {
     
      listarray = [];
      show = [];
      for(int i = 0;i<=x.length;i++)
      {
        List<int> temp = [];
        List<int> temp2 = [];
        for(int j = 0;j<=y.length;j++)
        {
              temp.add(-10);
              temp2.add(0);
        }
        listarray.add(temp);
        show.add(temp2);
      }
      lcs(x.length,y.length);
      track(x.length, y.length);
      
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
                      height: MediaQuery.of(context).size.height * 0.60,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                          itemCount: listarray.length, itemBuilder: (context, index) {
                            return Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                                height: MediaQuery.of(context).size.height * 0.10,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                    itemCount: listarray[index].length, itemBuilder: (context, i) {
                                      if(show[index][i]==1)
                                      {
                                        return Container(
                                        width: MediaQuery.of(context).size.width * 0.15,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(15.0),
                                                        ),
                                          color: Colors.red,
                                          child: Container(
                                            child: Center(child: Text(listarray[index][i].toString(), style: TextStyle(color: Colors.black, fontSize: 25.0),)),
                                          ),
                                        ),
                                          );
                                      }
                                      else if(show[index][i]==2)
                                      {
                                            return Container(
                                                width: MediaQuery.of(context).size.width * 0.15,
                                                child: Card(
                                                  shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(15.0),
                                                        ),
                                                  color: Colors.green,
                                                  child: Container(
                                                    child: Center(child: Text(listarray[index][i].toString(), style: TextStyle(color: Colors.black, fontSize: 25.0),)),
                                                  ),
                                                ),
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
                                                    child: Center(child: Text(listarray[index][i].toString(), style: TextStyle(color: Colors.black, fontSize: 25.0),)),
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
        title:Text("Longest Common Subsequence")
      ),
      body:Center(
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
                Container(
                width: 100,
                child: TextField(
                  onChanged: (value) {
                     x = value;
                    if(value== ""|| y=="")
                    {

                    }
                    else
                    {
                      lcsa();
                      setState(() {
                      });
                    }
                   },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText : "String 1",
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
                       padding: const EdgeInsets.all(16.0),
                    ),
              Container(
                width: 100,
                child: TextField(                 
                  onChanged: (value) {
                    y = value;
                    if(value==""|| x=="")
                    {
                       
                    }
                    else
                    {
                      
                      lcsa();
                      setState(() {
                        
                      });
                    }
                   },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText : "String 2",
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



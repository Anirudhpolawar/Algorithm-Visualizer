import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget carddetails(String worst,String best ,String worstcasedetails,String bestcaseDetails,String application)
{
  return  Material(
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.white,
                  child:Center(
                    child: Column(
                      children: <Widget>[
                        Column(
                          children : <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Algorithm Details",style: TextStyle(fontSize:20,color: Colors.red),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.details,size:40),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Worst Case Time Complexity : $worst",style: TextStyle(fontSize:20,color: Colors.red),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("best Case Time Complexity : $worst",style: TextStyle(fontSize:20,color: Colors.green),),
                            ),
                             Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("best Case details Complexity : $bestcaseDetails",style: TextStyle(fontSize:20,color: Colors.green),),
                            ),
                             Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Wrost Case Time Complexity : $worstcasedetails",style: TextStyle(fontSize:20,color: Colors.amber),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Application : $application",style: TextStyle(fontSize:20,color: Colors.green[200]),),
                            ),
                          ]
                        ),
                      ],
                    ),
                  ),
          );
}
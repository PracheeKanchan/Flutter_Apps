// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";

class ColumnAxis{

      /// MainAxisAlignment - start , CrossAxisAlignment - start
    Widget mainStart_CrossStart(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }

    /// MainAxisAlignment - start , CrossAxisAlignment - center
    Widget mainStart_CrossCenter(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }

    /// MainAxisAlignment - start , CrossAxisAlignment - End
    Widget mainStart_CrossEnd(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }

  /// MainAxisAlignment - center , CrossAxisAlignment - start
    Widget mainCenter_CrossStart(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }

      /// MainAxisAlignment - center , CrossAxisAlignment - center
    Widget mainCenter_CrossCenter(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }

      /// MainAxisAlignment - center , CrossAxisAlignment - end
    Widget mainCenter_CrossEnd(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }

    /// MainAxisAlignment - end , CrossAxisAlignment - start
    Widget mainEnd_CrossStart(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }

  /// MainAxisAlignment - end , CrossAxisAlignment - center
  Widget mainEnd_CrossCenter(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }

    /// MainAxisAlignment - end , CrossAxisAlignment - end
    Widget mainEnd_CrossEnd(){

       return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
        ); 
    }
}
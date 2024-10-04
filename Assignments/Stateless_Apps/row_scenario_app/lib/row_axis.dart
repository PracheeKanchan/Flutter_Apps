
import "package:flutter/material.dart";

class RowAxis{

      /// MainAxisAlignment - start , CrossAxisAlignment - start
    Widget mainStartCrossStart(){

       return Row(
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
    Widget mainStartCrossCenter(){

       return Row(
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
    Widget mainStartCrossEnd(){

       return Row(
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
    Widget mainCenterCrossStart(){

       return Row(
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
    Widget mainCenterCrossCenter(){

       return Row(
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
    Widget mainCenterCrossEnd(){

       return Row(
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
    Widget mainEndCrossStart(){

       return Row(
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
  Widget mainEndCrossCenter(){

       return Row(
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
    Widget mainEn_CrossEnd(){

       return Row(
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
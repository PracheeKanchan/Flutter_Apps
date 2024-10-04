import 'package:flutter/material.dart';

class SpaceParameter{

    //Check for spaceAround
    Widget spaceAround(){

        return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: const Color.fromARGB(255, 248, 160, 190),
                      ),
                  ],
              );
    }

    //Check for spaceAround
    Widget spaceBetween(){

        return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: const Color.fromARGB(255, 248, 160, 190),
                      ),
                  ],
              );
    }

    //Check for spaceAround
    Widget spaceEvenly(){

        return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: const Color.fromARGB(255, 248, 160, 190),
                      ),
                  ],
              );
    }
}
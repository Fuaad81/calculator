// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unnecessary_null_comparison

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();

  var fn = 0;
  var sn = 0;
  var operator;
  var c;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Calculator',
            style: TextStyle(
                color: Colors.blue,
                letterSpacing: 5,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Result : ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child:Text( c != null ? c.toString() : '',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                      
                      onPressed: () {
                        fn = 1;
                        
                      },
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 2;
                      },
                      child: Text('2', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 3;
                      },
                      child: Text('3', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        operator = '+';
                        sn = fn;
                        fn = 0;
                      },
                      child: Text('+', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 4;
                      },
                      child: Text('4', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 5;
                      },
                      child: Text('5', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 6;
                      },
                      child: Text('6', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        operator = '-';
                        sn = fn;
                        fn = 0;
                      },
                      child: Text('-', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 7;
                      },
                      child: Text('7', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 8;
                      },
                      child: Text('8', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 9;
                      },
                      child: Text('9', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        operator = 'x';
                        sn = fn;
                        fn = 0;
                      },
                      child: Text('x', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: FloatingActionButton(
                      onPressed: () {
                        fn = 0;
                      },
                      child: Text('0', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        operator = 'C';
                        sn = fn;
                        fn = 0;
                      },
                      child: Text('C', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        if(operator == '+'){
                         setState(() {
                           c = fn + sn;
                           
                         });
                         
                        }
                        else if(operator == '-'){
                          setState(() {
                            c = fn - sn;
                          });
                        }
                        else if(operator == 'x'){
                          setState(() {
                            c = fn * sn;
                          });
                        }
                        else if(operator == 'C'){
                          setState(() {
                            c = 0;
                          });
                        }
                        else if(operator == '/'){
                          setState(() {
                            c = fn / sn;
                          });
                        }
                      },
                      child: Text('=', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        operator = '/';
                        sn = fn;
                        fn = 0;
                      },
                      child: Text('/', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

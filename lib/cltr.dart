// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFormField(
                      controller: t1,
                      decoration: InputDecoration(
                          labelText: 'enter a number',
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 50,
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFormField(
                      controller: t2,
                      decoration: InputDecoration(
                          labelText: 'enter a number',
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                ),
              ],
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
                  child: Text('Result'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('2', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('3', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
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
                      onPressed: () {},
                      child: Text('4', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('5', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('6', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
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
                      onPressed: () {},
                      child: Text('7', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('8', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('9', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('*', style: TextStyle(fontSize: 20)),
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
                      onPressed: () {},
                      child: Text('0', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('.', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text('=', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FloatingActionButton(
                      onPressed: () {},
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

// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Model(),
    );
  }
}

class Model extends StatelessWidget {
  // const Model({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            titleSection,
            titleSection,
            titleSection,
            titleSection,
            titleSection,
            titleSection,
          ],
        ),
      ),
    );
  }

  Widget titleSection = Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(15),
    child: Row(children: [
      Text(
        "Title",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.red,
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/free-vector/royal-watercolor-valentine-red-background_1340-4006.jpg?t=st=1649175650~exp=1649176250~hmac=f54eeaaad25357a960c16183fb0d875cae8bc4838bb504a76119188eee083760&w=740',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ]),
  );
}

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
      debugShowCheckedModeBanner: true,
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
          children: [bannerSection, titleSection, rowSection, contenerSection],
        ),
      ),
    );
  }

  Widget titleSection = Container(
    // padding: EdgeInsets.all(10),
    // margin: EdgeInsets.all(5),
    child: Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Title",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.red,
            ),
          ),
          Container(
            width: 125.0,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/avatar.png'),
                // fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget rowSection = Container(
    color: Colors.black,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(20),
        ),
        Container(
          color: Colors.orange,
          padding: EdgeInsets.all(20),
        ),
        Container(
          color: Colors.yellow,
          padding: EdgeInsets.all(20),
        ),
        Container(
          color: Colors.green,
          padding: EdgeInsets.all(20),
        ),
        Container(
          color: Colors.pink,
          padding: EdgeInsets.all(20),
        ),
      ],
    ),
  );

  Widget bannerSection = Container(
    height: 200,
    width: double.infinity,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.blue,
          Colors.green,
        ],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Titre',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        SizedBox(height: 10),
        Text("sous-titre"),
        SizedBox(height: 10),
        Text("long text par ici blalaallaallala"),
        SizedBox(height: 10),
        RaisedButton(
          onPressed: () {},
          color: Colors.orange,
          child: Text(
            "Acheter ici",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
  );

  Widget contenerSection = Container(
    height: 200,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.blue,
          Colors.yellow,
        ],
      ),
    ),
  );
}

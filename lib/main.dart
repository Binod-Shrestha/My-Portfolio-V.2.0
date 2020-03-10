import 'package:all_in_mart/page_1.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String myName = 'Binod Shrestha';
  String myEmail = 'shresthabinod.softdev@gmail.com';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MyPortFolio'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(this.myName),
                accountEmail: Text(this.myEmail),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/BinodSh.png'),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text('B'),
                  ),
                ],
              ),
              ListTile(
                title: Text('Home'),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Page1('Page One')));
                },
              ),
              Divider(color: Colors.red),
              ListTile(
                title: Text('Home'),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Page1('Page One')));
                },
              ),
              Divider(color: Colors.red),
              ListTile(
                title: Text('Home'),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Page1('Page One')));
                },
              ),
              Divider(color: Colors.red),
              ListTile(
                title: Text('Home'),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Page1('Page One')));
                },
              ),
              Divider(color: Colors.red),
              ListTile(
                title: Text('Close'),
                trailing: Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        body: Container(
          child: Center(
            child: Text('Home'),
          ),
        ),
      ),
    );
  }
}

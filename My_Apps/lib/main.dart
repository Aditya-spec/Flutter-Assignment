import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/Home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Initially display FirstPage
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}




/*

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Basics of Flutter"),
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body: Center(
              child: Container(
                height: 300,
                width: 300,
                color: Colors.lightBlue,
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 30),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Type Name Here',
                            labelText: 'Name',
                            icon: Icon(Icons.accessibility))),
                    RaisedButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>
                          Calculator()),
                        );
                      },
                      color: Colors.greenAccent,
                      child: Text(
                        "Click Me",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
    throw UnimplementedError();
  }
}
*/

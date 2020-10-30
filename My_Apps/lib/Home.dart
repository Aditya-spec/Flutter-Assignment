import 'package:flutter/material.dart';
import 'package:learning_app/Menu.dart';

class Home extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<Home> {
  var myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Container(
        margin: EdgeInsets.only(top:30),
        padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Welcome Player',
                style: TextStyle(fontSize: 50, color: Colors.redAccent),
              ),
              Text(
                'Enter Your Name',
                style: TextStyle(fontSize: 30, color: Colors.lightGreen),
              ),
              TextField(
                controller: myController,
              ),

              RaisedButton(
                child: Text(
                  'Go to Menu',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.lightBlue,
                onPressed: () {
                  if(myController.text!="")
                   {
                    var route=MaterialPageRoute(
                    builder: (BuildContext context)=>
                    Menu(value: myController.text),
                    );
                    Navigator.of(context).push(route);
                   }
                  },
              )
            ],
          ),

      ),
    );
  }
}

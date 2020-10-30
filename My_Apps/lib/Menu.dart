import 'package:flutter/material.dart';
import 'package:learning_app/Apps/Calculate.dart';
import 'package:learning_app/Apps/TicTacToe.dart';

class Menu extends StatefulWidget {
  final String value;

  Menu({Key key, this.value}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MENU'),
        ),
        body: Container(
            margin: EdgeInsets.only(top:60),
            padding: EdgeInsets.all(40),
            child: Center(
              child: Column(
                  children:<Widget>
                  [ Text(
                      "Welcome To First App",
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 30,
                        fontFamily: 'my-font-family',
                      ),
                    ),
                    Text(
                        "${widget.value}",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 40,
                        )
                    ),
                    RaisedButton(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Icon(Icons.calculate),
                            Text("CALCULATOR",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.lightGreen
                              ),
                            )
                          ],
                        ),
                        onPressed:(){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context)=>
                                Calculate(),
                          ));
                        } ),
                    RaisedButton(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Icon(Icons.add_box_outlined),
                            Text("TIC TAC TOE",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.purple
                              ),
                            ),
                          ],
                        ),
                        onPressed:(){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context)=>
                                TicTacToe(),
                          ));
                        } ),

                  ]
              ),
            )

        ));
  }
}

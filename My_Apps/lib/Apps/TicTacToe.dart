import 'package:flutter/material.dart';
import 'package:learning_app/Home.dart';

class TicTacToe extends StatefulWidget {
  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List displayX=['','','','','','','','','',];
  bool flag=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.deepOrangeAccent,
     appBar: AppBar(
       title:Text("TIC TAC TOE"),
     ),
      body:
       Container(
         margin: EdgeInsets.only(top:20),
         child: Center(
           child: Column(
             children: [

               Expanded( flex:1,
                 child: Text("Play",
                 style: TextStyle(
                   fontSize: 40,
                   color: Colors.limeAccent,
                 ),),
               ),
               Expanded(
                 flex: 7,
                 child:  GridView.builder(
                     itemCount:9,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 3),
                     itemBuilder: (BuildContext context,int index){
                   return GestureDetector(
                     onTap:(){
                       _tapped(index);
                     },
                     child: Container(
                       decoration: BoxDecoration(
                         border: Border.all(color:Colors.white),
                       ),
                         child: Center(
                           child: Text(
                             displayX[index],
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                             ),),
                         )
                     ),
                   );
                 }),
               ),
               Expanded(

                 child:Text("All The Best",
                 style: TextStyle(
                   fontSize: 30,
                   color: Colors.black87
                 ),),
               ),
               RaisedButton(

                   color: Colors.white,
                   child: Text("Home",
                    style: TextStyle(
                         fontSize: 30,
                         color: Colors.lightGreen
                     ),
                   ),

                   onPressed:(){
                     Navigator.of(context).push(MaterialPageRoute(
                       builder: (BuildContext context)=>
                           Home(),
                     ));
                   } ),
             ],
           ),
         ),
       )
    );
  }
  void _tapped(int index){
 setState(() {
   if(flag){
     displayX[index]='O';
   }
   else{
     displayX[index]='X';
   }

   flag=!flag;
   _checkWinner();
 });
  }
  void _checkWinner()
  {
  if(displayX[0]==displayX[1] && displayX[2]==displayX[1] && displayX[0]!='')
    {
      _showWinDialouge();

    }
  if(displayX[0]==displayX[3] && displayX[3]==displayX[6] && displayX[0]!='')
  {
    _showWinDialouge();

  }
  if(displayX[4]==displayX[1] && displayX[1]==displayX[7] && displayX[7]!='')
  {
    _showWinDialouge();

  }
  if(displayX[2]==displayX[5] && displayX[5]==displayX[8] && displayX[8]!='')
  {
    _showWinDialouge();

  }
  if(displayX[3]==displayX[4] && displayX[3]==displayX[5] && displayX[3]!='')
  {
    _showWinDialouge();

  }
  if(displayX[6]==displayX[7] && displayX[7]==displayX[8] && displayX[8]!='')
  {
    _showWinDialouge();

  }
  if(displayX[0]==displayX[4] && displayX[0]==displayX[8] && displayX[0]!='')
  {
    _showWinDialouge();

  }
  if(displayX[2]==displayX[4] && displayX[4]==displayX[6] && displayX[6]!='')
  {
    _showWinDialouge();

  }
  if(displayX[0]!=''&&displayX[1]!=''&&displayX[2]!=''&&displayX[3]!=''&&displayX[4]!=''&&displayX[5]!=''&&displayX[6]!=''&&displayX[7]!=''&&displayX[8]!='')
  {
    _showDraw();
  }
  }
  void _showDraw()
  {
    showDialog(
        context: context,
        builder:(BuildContext context) {
          return AlertDialog(
            title: Text('Match Draw!'),
          );
        }
    );
    _clearCells();
  }
  void _clearCells()
  {
    for(int i=0;i<9;i++)
    {
      displayX[i]='';
    }
  }
  void _showWinDialouge()
  {
    showDialog(
      context: context,
      builder:(BuildContext context)
        {
          return AlertDialog(
            title: Text('Congratulations! You Won'),
          );
        }
    );
    _clearCells();


  }
}

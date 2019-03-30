import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyButton(),
    )
  );
}
/***************************************************** */
class MyButton extends StatefulWidget {
  @override
  _MyButtomState createState() => _MyButtomState();
}
//***************************************************** */


class _MyButtomState extends State<MyButton> {
   String textoMostrar = "press button";
    List arr = <String>["texto1","texto2","text3"];
    var index=0;
  void myfunction() {
    setState(() {
      textoMostrar = arr[index];
      index = index <arr.length-1 ? index+1 : 0; 
    });
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(textoMostrar,style: TextStyle(fontSize: 40.0,),),
              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text('Actualizar',style: TextStyle(color: Colors.white),),
                color: Colors.orange,
                onPressed: myfunction,
                
                            )
                          ],
                        ),
                      )
                    ),
                  );
                }
}
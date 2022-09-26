import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  var _email=TextEditingController();
  var _pass=TextEditingController();
  bool isval=true;
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          // width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "sign in",
                style: TextStyle(color: Colors.black, fontSize: 40),
              )),
              SizedBox(height: 20,),
              TextFormField(

                controller: _email,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  fillColor: Colors.pinkAccent,
                  filled: true    ,
                  label: Text("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                prefixIcon: Icon(Icons.lock)),

              ),
              SizedBox(width: 5,height: 5,),
              TextFormField(
                obscureText: isval?true:false,
                controller: _pass,
                decoration: InputDecoration(
                    fillColor: Colors.lightGreenAccent,
                    filled: true    ,
                    label: Text("password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                   suffixIcon: IconButton(onPressed: (){
                     setState(() {
                       isval=!isval;
                     });

                   },icon: Icon(Icons.remove_red_eye),)

              ),),
              SizedBox(width: 5,height: 5,),
              ElevatedButton(onPressed: (){}, child: Text("sign in"))
            ],
          ),
        ),
      ),
    );
  }
}

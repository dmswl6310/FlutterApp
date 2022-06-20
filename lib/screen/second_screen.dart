import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
    body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is Second Screen'),
          OutlinedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('Go to First Screen'))
        ],
      )
    ));
  }
}

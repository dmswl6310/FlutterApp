import 'package:flutter/material.dart';
import './list_screen.dart';
import './pomodoro_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar : AppBar(
        title: const Text('테스트 앱'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children:List.generate(6, (index) {
            return InkWell(
                child: Center(
                  child:Text(
                    'Project ${index+1}',
                    style:Theme.of(context).textTheme.headline5,
                  ),

                ),
                onTap:(){
                  if(index==0) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListScreen()));
                  }else{
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PomodoroScreen()));
                  }
                });})),
    );
  }
}


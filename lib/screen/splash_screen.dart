import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './todo_screen.dart';
import './login_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<bool> checkLogin() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    bool isLogin=prefs.getBool('isLogin') ?? false;
    print("[*] isLogin : "+isLogin.toString());
    return isLogin;
  }
  void moveScreen() async{
    await checkLogin().then((isLogin){
      if(isLogin){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
        (context)=> TodoScreen()));
      }else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
        (conext) => LoginScreen()));
      }
    });
  }
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:2),(){
      moveScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('SplashScreen',style:TextStyle(fontSize:20)),
            Text('나만의 일정 관리 : Todo List',style:TextStyle(fontSize: 20)),
          ],
        )
      )
    );
  }
}

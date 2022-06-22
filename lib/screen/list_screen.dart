import 'package:flutter/material.dart';
import './detail_screen.dart';
import '../repositories/food_repository.dart';
import '../models/food.dart';

class ListScreen extends StatelessWidget {
  final List<Food> foods = FoodRepository().getFoods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('음식 목록'),
        ),
        body: ListView.builder(
          itemCount:foods.length,
          itemBuilder: (context,index){
            return FoodTile(food:foods[index]);
          },
        ),
    );
  }
}

class FoodTile extends StatelessWidget {
  final Food food;
  FoodTile({
    required this.food
});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(food.title),
      leading: Image.network(food.image),
      onTap:(){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>DetailScreen(
food:food,
          ),),
        );
      },
    );
  }
}


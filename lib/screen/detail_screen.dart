import 'package:flutter/material.dart';
import '../models/food.dart';

class DetailScreen extends StatelessWidget {
  final Food food;

  DetailScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.title),
      ),
      body: Container(
        child: Column(
          children: [
            Image.network(food.image),
            Padding(
              padding: EdgeInsets.all(3),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          food.title,
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        food.subtitle,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    Text(
                      'Contact',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.near_me,
                      color: Colors.blue,
                    ),
                    Text(
                      'Route',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.save,
                      color: Colors.blue,
                    ),
                    Text(
                      'Save',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(food.description),
            )
          ],
        ),
      ),
    );
  }
}

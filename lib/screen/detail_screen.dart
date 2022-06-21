import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('음식 이름'),
      ),
      body: Column(
        children: [
          Image.network(src),
          Padding(
            padding:EdgeInsets.all(3),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:EdgeInsets.all(10),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Container(
                      child:
                    )
                  ]
                )
              )
            ],
          )
        ],
      ),
    );
  }
}

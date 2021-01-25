import 'package:flutter/material.dart';

class Post extends StatelessWidget{

  final int id;
  final String title;
  final String body;

  const Post({@required this.id,@required this.body,@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(4.0),
      color: Colors.green,
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              'Post $id',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            body,
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

}
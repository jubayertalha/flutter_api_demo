import 'package:flutter/material.dart';
import 'package:http/http.dart' as Http;
import 'dart:convert';

import 'package:flutter_api/post.dart';

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  static List _widgets = [];

  final String url = "https://jsonplaceholder.typicode.com/posts";

  @override
  void initState() {
    super.initState();
    getPost();
  }

  getPost() async {
    Http.Response response = await Http.get(url);
    setState(() {
      _widgets = json.decode(response.body);
    });
  }

  getBody(){
    if(_widgets.length==0){
      return Center(child: CircularProgressIndicator(),);
    }else{
      return ListView.builder(
        itemCount: _widgets.length,
        itemBuilder: (BuildContext context, int i) => Post(id: _widgets[i]['id'], body: _widgets[i]['body'], title: _widgets[i]['title']) ,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample'),
        backgroundColor: Colors.green ,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: getBody(),
      ),
    );
  }

}
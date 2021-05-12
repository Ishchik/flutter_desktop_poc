import 'package:flutter/material.dart';

class CallScreenSmall extends StatelessWidget {
  const CallScreenSmall({
    Key key,
    this.imageUrl,
    this.destination,
  }) : super(key: key);

  final String imageUrl;

  final String destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        automaticallyImplyLeading: true,
        centerTitle: true,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          destination,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(imageUrl)),
        ),
      ),
    );
  }
}

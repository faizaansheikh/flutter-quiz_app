import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  final String cat;
  Category(this.cat);

  @override
  Widget build(BuildContext context) {
    return Container(
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            width: double.infinity,
             color: const Color.fromARGB(255, 23, 6, 26),
            child: Text("Category : ${cat}" ,style: TextStyle(color: Colors.white,fontSize: 17),),
          );
       
  }
}
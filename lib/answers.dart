import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
   final VoidCallback selectHandler;
   final String answer1;
   Answers(this.selectHandler,this.answer1);
  @override
  Widget build(BuildContext context) {
    // print(_questions[_questionsIndex]);
 
    return Container(
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        color: const Color.fromARGB(255, 23, 6, 26),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                // height: double.infinity,
                height: 60,
                margin: EdgeInsets.symmetric(),
                padding: EdgeInsets.all(10),
                // color:Colors.black12,
                child: ElevatedButton(
                  onPressed: selectHandler,
                  child: Text(answer1),
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 48, 42, 49), // Background color
                    onPrimary: Colors.white, // Text Color (Foreground color)
                  ),
                )),
           
          ],
        ));
  }
}

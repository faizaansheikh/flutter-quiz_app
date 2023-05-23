import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int obtainedMarks;
  final VoidCallback handleBack;
  Result(this.obtainedMarks, this.handleBack);
  @override
  Widget build(BuildContext context) {
    // String per = '';
    double percentage = obtainedMarks / 60 * 100;
    return Center(
      child: Column(children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          color: const Color.fromARGB(255, 23, 6, 26),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(9),
                child: Text(
                  "Result",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Total marks : 60",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Obtained marks : ${obtainedMarks}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "${percentage}%",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 48, 42, 49), // Background color
                  onPrimary: Colors.white,
                  // Text Color (Foreground color)
                ),
                onPressed: handleBack,
                icon: Icon(Icons.arrow_back),
                label: Text("Attempt again"),
              )
            ],
          ),
        )
      ]),
    );
  }
}

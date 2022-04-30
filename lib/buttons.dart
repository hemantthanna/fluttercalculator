import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  Button(
      {this.color,
      this.textColor,
      required this.buttonText,
      this.buttontapped});

  @override
  Widget build(BuildContext context) {


    return Center(
      child: SizedBox(
        width: 90,
        height: 90,
        child: FloatingActionButton(
          onPressed: buttontapped,
          backgroundColor: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 29,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



    // return GestureDetector(
    // onTap: buttontapped,
    // child: Padding(
    // 	padding: const EdgeInsets.all(0.2),
    // 	child: ClipRRect(
    // 	// borderRadius: BorderRadius.circular(25),
    // 	child: Container(
    // 		color: color,
    // 		child: Center(
    // 		child: Text(
    // 			buttonText,
    // 			style: TextStyle(
    // 			color: textColor,
    // 			fontSize: 25,
    // 			fontWeight: FontWeight.bold,
    // 			),
    // 		),
    // 		),
    // 	),
    // 	),
    // ),
    // );
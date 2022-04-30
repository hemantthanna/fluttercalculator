import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'buttons.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';
  final List<String> buttons = [
    'C',
    '%',
    '/',
    'DEL',
    '7',
    '8',
    '9',
    'X',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '()',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      margin: const EdgeInsets.only(top: 50),
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style:
                            const TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    // Clear Button
                    if (index == 0) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.grey[900],
                        textColor: Colors.red,
                      );
                    }

                    // Delete Button
                    else if (index == 3) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.red,
                        textColor: Colors.black,
                      );
                    }
                    // Equalto Button
                    else if (index == 19) {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.green,
                        textColor: Colors.white,
                      );
                    }

                    // other buttons
                    else {
                      return Button(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.grey[900],
                        textColor: isOperator(buttons[index])
                            ? Colors.green
                            : Colors.white,
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'X' || x == '-' || x == '+' || x == '%') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Expression exp = Parser().parse(finaluserinput);
    double output = exp.evaluate(EvaluationType.REAL, ContextModel());
    answer = output.toString();
  }
}

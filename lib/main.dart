import 'package:flutter/material.dart';
import 'package:simple_calculator/custom_buttons.dart';
import 'package:simple_calculator/constants.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kDarkNavyColor,
    ),
    home: const SimpleCalculator(),
  ));
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '308 x 42',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '12, 936',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: kLightNayColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              padding: const EdgeInsets.only(top: 120.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 55.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CustomButtons(
                          label: 'AC',
                          style: TextStyle(
                            color: kLimeGreen,
                          ),
                        ),
                        CustomButtons(
                          label: '+/-',
                          style: TextStyle(
                            color: kLimeGreen,
                          ),
                        ),
                        CustomButtons(
                          label: '()',
                          style: TextStyle(
                            color: kLimeGreen,
                          ),
                        ),
                        CustomButtons(
                          label: '%',
                          style: TextStyle(
                            color: kLightRed,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 55.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CustomButtons(
                          label: '7',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '8',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '9',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: 'x',
                          style: TextStyle(
                            color: kLightRed,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 55.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CustomButtons(
                          label: '4',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '5',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '6',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '-',
                          style: TextStyle(
                            color: kLightRed,
                            fontSize: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 55.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CustomButtons(
                          label: '1',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '2',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '+',
                          style: TextStyle(
                            color: kLightRed,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 55.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CustomButtons(
                          label: '&',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '0',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '.',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        CustomButtons(
                          label: '=',
                          style: TextStyle(
                            color: kLightRed,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

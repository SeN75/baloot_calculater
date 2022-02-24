import 'package:app_calculator/modules/team.module.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:app_calculator/constants.dart';

import 'button.dart';
import 'input_label.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Team team1 = Team(input: TextEditingController(), result: 0, title: 'لهم');
  Team team2 = Team(input: TextEditingController(), result: 0, title: 'لنا');
  int finalResult = 0;

  calculate() {
    setState(() {
      team1.result = team1.result + int.parse(team1.input.text);
      team2.result = team2.result + int.parse(team2.input.text);
      finalResult += team1.result + team2.result;
    });
  }

  newGame() {
    team1.input.text = "0";
    team1.result = 0;
    team2.input.text = "0";
    team2.result = 0;
    finalResult = 0;
    calculate();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    initState() {
      super.initState();
      calculate();
    }

    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(pSpace),
          child: Row(
            children: <Widget>[
              InputsLabel(
                team: team1,
              ),
              SizedBox(
                width: size.width * 0.3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$finalResult",
                        style: h1,
                      ),
                      Button(
                        text: 'سجل',
                        buttonThem: 0,
                        press: () {
                          calculate();
                        },
                      ),
                      Button(
                        text: 'لعبة جديده',
                        buttonThem: 1,
                        press: () {
                          newGame();
                        },
                      ),
                    ]),
              ),
              InputsLabel(
                team: team2,
              ),
            ],
          ),
        )
      ]),
    );
  }
}

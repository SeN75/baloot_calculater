import 'package:flutter/material.dart';

import 'button.dart';

class ResultSection extends StatefulWidget {
  const ResultSection(
      {Key? key,
      required this.calculate,
      required this.newGame,
      required this.finalResult})
      : super(key: key);

  final VoidCallback calculate;
  final VoidCallback newGame;
  final int finalResult;

  @override
  State<ResultSection> createState() => _ResultSectionState();
}

class _ResultSectionState extends State<ResultSection> {
  get h1 => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.3,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "${widget.finalResult}",
          style: h1,
        ),
        Button(
          text: 'سجل',
          buttonThem: 0,
          press: () {
            widget.calculate;
          },
        ),
        Button(
          text: 'لعبة جديده',
          buttonThem: 1,
          press: () {
            widget.newGame;
          },
        ),
      ]),
    );
  }
}

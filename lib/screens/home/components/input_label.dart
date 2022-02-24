import 'package:app_calculator/modules/team.module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants.dart';

class InputsLabel extends StatefulWidget {
  const InputsLabel({
    Key? key,
    required this.team,
  }) : super(key: key);
  final Team team;
  @override
  State<InputsLabel> createState() => _InputsLabelState();
}

class _InputsLabelState extends State<InputsLabel> {
  @override
  Widget build(BuildContext context) {
    TextEditingController input = widget.team.input;
    return Expanded(
        child: Column(
      children: <Widget>[
        Text(
          widget.team.title,
          style: h1,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "${widget.team.result}",
          style: h2,
        ),
        Container(
          margin: const EdgeInsets.only(top: pSpace),
          padding: const EdgeInsets.symmetric(
              horizontal: pSpace, vertical: pSpace - 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(pRadius),
              color: cWhite,
              border: Border(),
              boxShadow: [
                BoxShadow(
                    color: cSecondary.withOpacity(0.1),
                    offset: Offset(0, 5),
                    blurRadius: 10),
                BoxShadow(
                    color: cBackground.withOpacity(1),
                    offset: Offset(0, -10),
                    blurRadius: 10)
              ]),
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            controller: input,
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Enter",
                hintStyle: TextStyle(color: cSecondary.withOpacity(0.3))),
          ),
        )
      ],
    ));
  }
}

import 'package:flutter/cupertino.dart';

class Team {
  Team({required this.input, required this.result, required this.title});
  final TextEditingController input;
  int result;
  final String title;
}

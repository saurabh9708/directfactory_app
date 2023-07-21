// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Countrypicker extends StatefulWidget {
  const Countrypicker({super.key});

  @override
  State<Countrypicker> createState() => _CountrypickerState();
}

class _CountrypickerState extends State<Countrypicker> {
  List<dynamic> countries = [];

  String? countryId;

  @override
  void initState() {
    super.initState();

    countries.add({
      "id": 1,
      "label": "India",
    });
    countries.add({
      "id": 2,
      "label": "USA",
    });
    countries.add({
      "id": 3,
      "label": "UAE",
    });
    countries.add({
      "id": 4,
      "label": "France",
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          FormHelper.dropDownWidget(
              context, " Select country", countryId, countries, (onChangeVal) {
            countryId = onChangeVal;
          }, (onValidateVal) {
            if (onValidateVal == null) {
              return "Please Select Country";
            }
            return null;
          }, optionValue: "id", optionLabel: "label"),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class CardItemSample extends StatefulWidget {
  const CardItemSample({Key? key}) : super(key: key);

  @override
  State<CardItemSample> createState() => _CardItemSampleState();
}

class _CardItemSampleState extends State<CardItemSample> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      child: Row(
        children: [
          Checkbox(
            activeColor: const Color(0xFFFFB608),
            value: checkedValue,
            onChanged: (newValue) {
              setState(() {
                checkedValue = newValue!;
              });
            },
          ),
          Container(
            height: 70,
            width: 70,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: 5),
          )
        ],
      ),
    );
  }
}

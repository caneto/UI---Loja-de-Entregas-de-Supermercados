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
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 230, 177),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ],
            ),
            child: Image.asset(
              'images/1.png',
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: const [
              Text(
                'Nome do Item',
                 style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(162, 0, 0, 0),
                 ), 
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

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
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            child: Column(
              children: [
                Row(
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
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(children: [
                        const Text(
                          'Nome do Item',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(162, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: const [
                            Text(
                              'R\$50',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFB608),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '/ 50Kg',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFB608),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: const Text(
                                '01',
                                style: TextStyle(
                                    color: Color.fromARGB(162, 0, 0, 0),
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFB608),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(thickness: 1),
              ],
            ),
          ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                )
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Sub-Total:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                  Text(
                    'R\$ 100,00',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Frete:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                  Text(
                    'R\$ 12,00',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Desconto:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                  Text(
                    '- R\$ 5,00',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

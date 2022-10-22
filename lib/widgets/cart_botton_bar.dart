import 'package:flutter/material.dart';

class CartBottonBar extends StatelessWidget {
  const CartBottonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: const Color(0xFFF5F9FD), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
        )
      ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.discount,
                  color: Color(0xFFFFB608),
                ),
                Text(
                  'User o Cupom de Desconto',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 25, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(162, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'R\$ 107,00',
                    style: TextStyle(
                      fontSize: 21,
                      color: Color(0xFFFFB608),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pushNamed(context, 'orderPage');
                }),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFB608),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Pague aqui',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ), 
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

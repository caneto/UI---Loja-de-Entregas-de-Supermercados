import 'package:flutter/material.dart';
import 'package:uidelojadesupermercados/widgets/card_item_sample.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 28,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'Meu Carrinho',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFB608),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.notifications,
                  size: 30,
                  color: Color(0xFFFFB608),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          color: Colors.white,
          child: Column(
            children: [
              CheckboxListTile(
                  title: const Text(
                    'Selecione Todos os Itens',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                const Divider(height: 30, thickness: 1),
                const CardItemSample(),
            ],
          ),
        ),
      ]),
    );
  }
}

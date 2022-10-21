import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Icon(
                Icons.home,
                color: Color(0xFFF7CA07),
                size: 32,
              ),
              Text(
                'Home',
                style: TextStyle(
                  color: Color(0xFFF7CA07),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.search,
                color: Color(0xFFF7CA07),
                size: 32,
              ),
              Text(
                'Busca',
                style: TextStyle(
                  color: Color(0xFFF7CA07),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          InkWell(
            //onTap: () => Navigator.pushNamed(context, 'cartPage'),
            child: Column(
              children: const [
                Icon(
                  CupertinoIcons.cart,
                  color: Color(0xFFF7CA07),
                  size: 32,
                ),
                Text(
                  'Carrinho',
                  style: TextStyle(
                    color: Color(0xFFF7CA07),
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: const [
              Icon(
                Icons.person,
                color: Color(0xFFF7CA07),
                size: 32,
              ),
              Text(
                'Minha Conta',
                style: TextStyle(
                  color: Color(0xFFF7CA07),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

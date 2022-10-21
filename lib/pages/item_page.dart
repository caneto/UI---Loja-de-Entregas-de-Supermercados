import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 230, 177),
            width: double.infinity,
            height: 390,
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                              )
                            ]),
                        child: const Icon(
                          Icons.favorite,
                          size: 30,
                          color: Color(0xFFFFB608),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'images/2.png',
                  width: 260,
                  height: 260,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Nome do Item',
                   style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

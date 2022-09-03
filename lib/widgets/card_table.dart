import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SigleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SigleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental_outlined,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.purple,
            icon: Icons.shop,
            text: 'Shopping',
          ),
          _SigleCard(
            color: Colors.purpleAccent,
            icon: Icons.cloud,
            text: 'Bill',
          )
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.deepPurple,
            icon: Icons.movie,
            text: 'Entertaiment',
          ),
          _SigleCard(
            color: Colors.pinkAccent,
            icon: Icons.food_bank_outlined,
            text: 'Grocery',
          )
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SigleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental_outlined,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.deepPurple,
            icon: Icons.movie,
            text: 'Entertaiment',
          ),
          _SigleCard(
            color: Colors.pinkAccent,
            icon: Icons.food_bank_outlined,
            text: 'Grocery',
          )
        ]),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SigleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}

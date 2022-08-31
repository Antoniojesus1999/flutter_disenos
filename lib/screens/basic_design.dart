import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/img.jpg')),
        const Title(),
        //button section
        const ButtonSection(),
        //Description
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: const Text(
              'Ullamco esse ad qui laboris. Dolor aute est reprehenderit magna ipsum. Quis amet eu ullamco proident aliqua nulla in cillum eu proident. Amet est non id adipisicing eu nisi cupidatat Lorem magna ad cillum. Dolore voluptate incididunt commodo reprehenderit adipisicing dolore dolore do. Sit id anim nulla quis voluptate anim mollit culpa reprehenderit. Lorem adipisicing exercitation enim officia occaecat id sunt.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg,Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.route_rounded, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40,
        ),
        Text(text)
      ],
    );
  }
}

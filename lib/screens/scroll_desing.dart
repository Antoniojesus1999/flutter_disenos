import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.5,
        0.5
      ],
          colors: [
        Color(0xff5EE8C5),
        Color(0xff30BAD6),
      ]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        scrollDirection: Axis.vertical,
        physics:
            const BouncingScrollPhysics(), //comportamiento de rebote entre pagina iphone
        children: const [
          Page1(),
          Page2(),
          Page1(),
          Page1(),
        ],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Bacground(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            '11º',
            style: textStyle,
          ),
          Text('Miércoles', style: textStyle),
          //Expander
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 120,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Bacground extends StatelessWidget {
  const Bacground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity, //hacer que tome todo el alto de la pantalla
      alignment: Alignment.topCenter, //Colocar imagen en arriba del todo
      child: const Image(
        image: AssetImage('assets/scroll.png'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA),
              shape: const StadiumBorder()),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text('Biemvenido',
                style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
        ),
      ),
    );
  }
}

import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Background(),
        //Home body
        _HomeBody()
      ],
    ));
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        PageTitle(),
      ],
    ));
  }
}

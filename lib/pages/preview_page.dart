import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/widgets.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(Icons.menu),
      //   title: const Text('TODO'),
      //   actions: const [Icon(Icons.search)],
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Stack(
        children: [
          const PreviewBackground(),
          Column(
            children: [
              SafeArea(
                bottom: false,
                child: CustomAppBar(),
              ),
              PreviewUserInformation(),
              Text('Today : Fecha'),
              TodoCards(),
            ],
          ),
        ],
      ),
    );
  }
}

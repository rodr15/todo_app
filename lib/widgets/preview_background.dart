import 'package:flutter/material.dart';

class PreviewBackground extends StatelessWidget {
  const PreviewBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFFf9bd63),
          Color(0xFFdb616e),
        ],
      )),
    );
  }
}

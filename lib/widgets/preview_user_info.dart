import 'package:flutter/material.dart';

class PreviewUserInformation extends StatelessWidget {
  const PreviewUserInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.red,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 40, bottom: 50),
        margin: const EdgeInsets.only(left: 40),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CircleAvatar(radius: 30),
            SizedBox(height: 35),
            Text(
              'Hello, Jane.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              'Looks like feel good',
              style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
            ),
            Text(
              'You have 3 task to do today',
              style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
            ),
          ],
        ));
  }
}

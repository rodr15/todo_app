// ! Mostrar todos los estilos que se van a usar en la aplicacion

import 'package:flutter/material.dart';

class Examples extends StatelessWidget {
  const Examples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          children: [
            _Example(textoObjeto: 'Iconos', child: Icon(Icons.menu)),
            _Example(
                textoObjeto: 'Texto titulo',
                child: Text('Texto titulo',
                    style: ThemeData.light().textTheme.titleMedium))
          ],
        ),
      ),
    );
  }
}

class _Example extends StatelessWidget {
  final String textoObjeto;
  final Widget child;

  const _Example({Key? key, required this.textoObjeto, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text(textoObjeto), child],
        ),
        const Divider()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/models/card_model.dart';

class TodoCards extends StatelessWidget {
  TodoCards({
    Key? key,
  }) : super(key: key);

  final List<CardModel> cards = [
    CardModel('Personal', 9),
    CardModel('Work', 0),
    CardModel('Excercise', 3),
    CardModel('Finances', 1),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 450,
      child: ListView.builder(
        itemCount: cards.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          // return _TodoCard();
          return _TodoCard(cards[index]);
        },
      ),
    );
  }
}

class _TodoCard extends StatelessWidget {
  final CardModel card;
  const _TodoCard(
    this.card, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 300,
          height: 400,
          margin: EdgeInsets.only(left: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              //* Floating Action Button

              Positioned(
                top: 20,
                left: 20,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  elevation: 1,
                  child: const Icon(
                    Icons.person,
                    color: Color(0xFFdb616e),
                  ),
                ),
              ),

              //* icono 3 puntos
              const Positioned(
                top: 20,
                right: 20,
                child: Icon(Icons.more_vert),
              ),
              //* numero de tareas
              Positioned(
                bottom: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${card.tasks} Tasks',
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 16),
                      ),
                      //* Nombre de la categoria
                      Text(
                        card.category,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 35),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

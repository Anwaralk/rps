import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String playerOne = '';
  String playerTwo = '';
  String result = '';

  void play() {
    List<String> signs = ['rock', 'paper', 'scissors'];

    int playerOneNum = Random().nextInt(3);
    int playerTwoNum = Random().nextInt(3);

    setState(() {
      playerOne = signs[playerOneNum];
      playerTwo = signs[playerTwoNum];
    });

    if (playerOne == 'paper' && playerTwo == 'rock') {
      result = 'player one wins!';
    } else if (playerOne == 'scissors' && playerTwo == 'paper') {
      result = 'player one wins!';
    } else if (playerOne == 'rock' && playerTwo == 'scissors') {
      result = 'player one wins!';
    } else if (playerOne == playerTwo) {
      result = "it's a tie!";
    } else {
      result = 'player two wins!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 188, 84),
      appBar: AppBar(
        title: Text(
          'ROCK PAPER SCISSORS',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/$playerOne.png',
                width: 150,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/images/$playerTwo.png',
                width: 150,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Anwar'),
              SizedBox(
                width: 150,
              ),
              Text('Bader'),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              play();
            },
            child: Text('Play'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
          ),
          Text('$result'),
        ],
      )),
    );
  }
}

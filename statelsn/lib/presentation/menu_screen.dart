import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/todolist');
            },
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: Card(
                child: Center(
                  child: Text(
                    "Todo List",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/triangle');
            },
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: Card(
                child: Center(
                  child: Text(
                    "Luas Segitiga",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

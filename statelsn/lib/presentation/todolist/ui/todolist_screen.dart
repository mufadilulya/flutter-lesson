import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statelsn/presentation/todolist/provider/todolist_provider.dart';

class TodolistScreen extends StatelessWidget {
  const TodolistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController todoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: Column(
        children: [
          TextField(
            controller: todoController,
            decoration: InputDecoration(
              labelText: "Todo",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<TodolistProvider>(context, listen: false)
                  .addData(todoController.text);
            },
            child: Text("Save"),
          ),
          Consumer<TodolistProvider>(
            builder: (context, state, child) {
              return SizedBox(
                height: 700,
                child: ListView.builder(
                  itemCount: state.todo.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.todo[index]),
                      onLongPress: () {
                        Provider.of<TodolistProvider>(context, listen: false)
                            .removeData(index);
                      },
                      trailing: IconButton(
                        onPressed: () {
                          Provider.of<TodolistProvider>(context, listen: false)
                              .removeData(index);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

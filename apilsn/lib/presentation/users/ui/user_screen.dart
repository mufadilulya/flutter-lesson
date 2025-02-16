import 'package:apilsn/presentation/users/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserProvider>().getDataUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: Consumer<UserProvider>(
        builder: (context, state, child) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(state.data[index]['avatar']),
                  title: Text(state.data[index]['name']),
                  subtitle: Text(state.data[index]['email']),
                  trailing: Icon(Icons.arrow_forward_ios),
                );
              },
            );
          }
        },
      ),
    );
  }
}

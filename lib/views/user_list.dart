import 'package:flutter/material.dart';
import 'package:projeto/models/user.dart';
import 'package:projeto/provider/users.dart';
import 'package:projeto/routes/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:projeto/components/user_tile.dart';



class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        backgroundColor: Color.fromARGB(255, 175, 53, 39),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
                arguments: const User(
                  id: '',
                  name: '',
                  email: '',
                  avatarUrl: '',
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
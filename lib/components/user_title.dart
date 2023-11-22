
import 'package:flutter/material.dart';
import 'package:projeto/models/user.dart';
import 'package:projeto/routes/app_routes.dart';



class UserTile extends StatelessWidget {
  late final User user;

  UserTile(User byIndex);
  


  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
    ? const CircleAvatar(child: Icon(Icons.person))
    : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),

      trailing: SizedBox(
        width: 100,
        child: Row(
          children: <Widget> [
            IconButton(
              icon: const Icon(Icons.edit),
              color: Colors.orange,
              onPressed: () {
                Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
                arguments: user,
               );
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              color: Colors.red,
              onPressed:() {}
            ),
          ],
        ),
      ),
     
    );
  }
}
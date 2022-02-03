import 'package:flutter/material.dart';
import 'package:user_list/domain/entities/user.dart';

class UserItemWidget extends StatelessWidget {
  final User user;

  const UserItemWidget(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(user.username), subtitle: Text(user.email));
  }
}

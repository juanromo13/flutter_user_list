import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_list/domain/providers/user_list_provider.dart';
import 'package:user_list/ui/pages/home/widgets/user_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = Provider.of<UserListProvider>(context).users;

    return Scaffold(
        appBar: AppBar(
          title: const Text('User list'),
        ),
        body: (users.isNotEmpty)
            ? ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return UserItemWidget(users[index]);
                })
            : const Center(child: CircularProgressIndicator()));
  }
}

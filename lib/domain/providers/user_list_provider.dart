import 'package:flutter/material.dart';
import 'package:user_list/domain/entities/user.dart';
import 'package:user_list/domain/repositories/abstract_user_list_repository.dart';

class UserListProvider extends ChangeNotifier {
  final AbstractUserListRepository abstractUserListRepository;

  List<User> users = [];

  UserListProvider(this.abstractUserListRepository) {
    getUsers();
  }

  Future getUsers() async {
    users = await abstractUserListRepository.getUsers();
    notifyListeners();
  }
}
